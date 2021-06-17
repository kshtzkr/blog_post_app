module Types
  module Input
    class BlogInputType < Types::BaseInputObject
      argument :title, String, required: true
      argument :body, String, required: true
      argument :category_id, Integer, required: true
    end
  end
end