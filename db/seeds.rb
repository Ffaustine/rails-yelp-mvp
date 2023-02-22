# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[Chinese Italian Japanese French Belgian].sample
  )
  restaurant.save!
  puts "Created #{restaurant.name}"
  puts "Finished!"
end
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
