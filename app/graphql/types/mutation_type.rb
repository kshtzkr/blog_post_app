module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :add_blog, mutation: Mutations::AddBlog
    field :add_category, mutation: Mutations::AddCategory
  end
end
