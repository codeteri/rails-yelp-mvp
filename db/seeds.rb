# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese"}
kfccw = {name: "KFC Canal Walk", address: "Shell Canal Walk, 22 Century Blvd, Century City, Cape Town, 7441", category: "belgian"}
mcdcw = {name: "MCDonalds Canal Walk", address: "Canal Walk Shopping Centre, Century Blvd, Century City, Cape Town, 7441", category: "chinese"}
mcdcw = {name: "Nando's Canal Walk", address: "Shop FC10, Century City Dr, Canal Walk, Century City, 7441", category: "italian"}

[dishoom, pizza_east, kfccw, mcdcw].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"