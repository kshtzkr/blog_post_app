module Mutations
  class AddBlog < Mutations::BaseMutation
    argument :params, Types::Input::BlogInputType, required: true

    field :blog, Types::BlogType, null: false

    def resolve(params:)
      blog_params = Hash params

      begin
        blog = Blog.create!(blog_params)

        { blog: blog }
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end