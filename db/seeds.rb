# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0778880905", category: "chinese"}
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0778880902", category: "italian" }
les_Cuivres =  { name: "Les Cuivres", address: "12 Avenue de la République, Paris 75011", phone_number: "0778880901", category: "italian" }
ostalamer =  { name: "Ostalamer", address: "24 Chemin d'Erromardie, Saint-jean-de-Luz 64000", phone_number: "0778880909", category: "french" }
side_Burger =  { name: "Side Burger", address: "36 Rue Oberkampf, Paris 75011", phone_number: "0778880907", category: "french" }

[ dishoom, pizza_east, les_Cuivres, ostalamer, side_Burger ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
