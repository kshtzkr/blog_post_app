module Types
  module Input
    class CategoryInputType < Types::BaseInputObject
      argument :category_type, String, required: true
    end
  end
end