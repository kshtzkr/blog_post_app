module Queries
  class FetchBlogsWithCategory < Queries::BaseQuery

    type Types::BlogType, null: false
    argument :category_id, ID, required: true

    def resolve(category_id:)
      Blog.where(category_id: category_id ).order(created_at: :desc)
      rescue ActiveRecord::RecordNotFound => _e
        GraphQL::ExecutionError.new('Blog does not exist with this category type.')
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
    end
  end
end