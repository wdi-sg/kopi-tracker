# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Roast.create(name: "Cinnamon")
Roast.create(name: "Light")
Roast.create(name: "City/Medium")
Roast.create(name: "Full City")
Roast.create(name: "Dark")
Roast.create(name: "French")
Roast.create(name: "Italian")
p "SEEDED ROAST DATA"

##################################
Origin.destroy_all
Origin.create(name: "Kiambu County", location: "Kenya", phone: "9810 6692 0123")
Origin.create(name: "Mantiqueira", location: "Brazil", phone: "6902 1092 0199")
Origin.create(name: "Guwe", location: "Ethiopia", phone: "9999 2092 0129")
Origin.create(name: "Sumatra", location: "Indonesia", phone: "9810 0087 0392")
Origin.create(name: "Acevedo", location: "Colombia", phone: "9810 0092 0123")
Origin.create(name: "Kivu Highlands", location: "Congo", phone: "9938 0292 1092")
p "SEEDED ORIGIN DATA"