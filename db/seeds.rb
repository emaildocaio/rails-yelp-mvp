# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

categories = ["chinese", "italian", "japanese", "french", "belgian"]
rating = [0, 1, 2, 3, 4, 5]

Restaurant.destroy_all

10.times do
  restaurant = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, category: categories.sample , phone_number: Faker::PhoneNumber.cell_phone_with_country_code)
  5.times do
  review = Review.create!(content: Faker::Restaurant.review, rating: rand(0..5), restaurant_id: restaurant.id)
  end
end
