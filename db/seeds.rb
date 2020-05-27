# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Origin.destroy_all

Origin.create(name: "Farmland", location: "Singapore", phone: "9092 0123")
Origin.create(name: "Overgrowth Farm", location: "USA", phone: "9810 6692 0123")
Origin.create(name: "Forested Farm", location: "Malaysia", phone: "6902 1092 0199")
Origin.create(name: "Cooling Mountain", location: "Canada", phone: "9999 2092 0129")
Origin.create(name: "High Up in the Sky", location: "Skyland", phone: "9810 0087 0392")
Origin.create(name: "Hidden Gem", location: "Sri Lanka", phone: "9810 0092 0123")
Origin.create(name: "Tall Mountain", location: "USA", phone: "9938 0292 1092")

p "SEEDED ORIGIN DATA" 

Roastedness.destroy_all

Roastedness.create(roast: "Cinnamon")
Roastedness.create(roast: "Light")
Roastedness.create(roast: "City/Medium")
Roastedness.create(roast: "Full City")
Roastedness.create(roast: "Dark")
Roastedness.create(roast: "French")
Roastedness.create(roast: "Italian")

p "SEEDED ROAST DATA"