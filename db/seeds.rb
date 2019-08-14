
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Roast.destroy_all
Roast.create(roast_name: "Cinnamon", level: "1")
Roast.create(roast_name: "Light", level: "2")
Roast.create(roast_name: "City/Medium", level: "3")
Roast.create(roast_name: "Full City", level: "4")
Roast.create(roast_name: "Dark", level: "5")
Roast.create(roast_name: "French", level: "6")
Roast.create(roast_name: "Italian", level: "7")
p "SEEDED ROAST DATA"
##################################
Origin.destroy_all
Origin.create(origin_name: "Farmland", location: "Singapore", phone: "9092 0123")
Origin.create(origin_name: "Overgrowth Farm", location: "USA", phone: "9810 6692 0123")
Origin.create(origin_name: "Forested Farm", location: "Malaysia", phone: "6902 1092 0199")
Origin.create(origin_name: "Cooling Mountain", location: "Canada", phone: "9999 2092 0129")
Origin.create(origin_name: "High Up in the Sky", location: "Skyland", phone: "9810 0087 0392")
Origin.create(origin_name: "Hidden Gem", location: "Sri Lanka", phone: "9810 0092 0123")
Origin.create(origin_name: "Tall Mountain", location: "USA", phone: "9938 0292 1092")
p "SEEDED ORIGIN DATA"
###################################