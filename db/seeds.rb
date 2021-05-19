# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '+44 20 7420 9324', category: "italian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '+44 20 7729 1888', category: "french" }
shans_bistro = { name: "Shan’s Bistro", address: "Markgrafenstraße 36, 10117 Berlin-Mitte", phone_number: '49 (0)30-20 67 89 200', category: "belgian" }
mutter_lustig = { name: "Mutter Lustig", address: "Müggelheimer Str. 1, 12555 Berlin-Köpenick", phone_number: '49 030 64094884', category: "italian" }
duke = { name: "Duke", address: "Nürnberger Str. 50-55, 10789 Berlin, Germany", phone_number: '+49 (0)30 68 315-0', category: "japanese" }

[dishoom, pizza_east, shans_bistro, mutter_lustig, duke].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
