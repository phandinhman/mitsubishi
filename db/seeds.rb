# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = ["attrage", "migrate", "outlander", "outlander sport", "pajero", "pajero sport", "triton"]
categories.each do |category|
  Category.create! name: category
end

20.times do
  Car.create! name: Faker::Name.name, cost: 1000000000, version: 2.4,
    category_id: rand(1..7)
end
