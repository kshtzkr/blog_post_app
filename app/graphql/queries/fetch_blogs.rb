module Queries
  class FetchBlogs < Queries::BaseQuery

    type [Types::BlogType], null: false

    def resolve
      Blog.all.order(created_at: :desc)
    end
  end
end