# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |i|
  Category.create(category_type: "category #{i + 1}")
end

5.times do |i|
  Blog.create(title: "Blog #{i + 1}", body: 'Lorem ipsum saves lives', category_id: i + 1)
end
