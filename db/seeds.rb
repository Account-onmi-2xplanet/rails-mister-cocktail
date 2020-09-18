# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Cocktail.create!(name: "Mojiiiiito")
Cocktail.create!(name: "Cuba free")

Dose.create!(description: "20leaves", cocktail_id: "1", ingredient_id: "2")
Dose.create!(description: "10leaves", cocktail_id: "1", ingredient_id: "1")
