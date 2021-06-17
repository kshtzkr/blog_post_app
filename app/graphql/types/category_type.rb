module Types
  class CategoryType < Types::BaseObject
    field :id, ID, null: false
    field :category_type, String, null: true
    field :blogs, [BlogType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
