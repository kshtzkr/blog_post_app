module Queries
  class FetchBlog < Queries::BaseQuery
    type Types::BlogType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Blog.find(id)
    rescue ActiveRecord::RecordNotFound => _e
      GraphQL::ExecutionError.new('Blog does not exist.')
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
        " #{e.record.errors.full_messages.join(', ')}")
    end
  end
end