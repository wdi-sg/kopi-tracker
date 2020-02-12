# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cinnamon = Roast.where(name: "Cinnamon")[0]
light = Roast.where(name: "Light")[0]
city_medium = Roast.where(name: "City Medium")[0]
full_city = Roast.where(name: "Full City")[0]
dark = Roast.where(name: "Dark")[0]
french = Roast.where(name: "French")[0]
italian = Roast.where(name: "Italian")[0]

benn = User.where(id: 1)[0]

bali = Origin.create(location: "Bali", phone_number: "+63")
vietnam = Origin.create(location: "Vietnam", phone_number: "+44")
singapore = Origin.create(location: "Singapore", phone_number: "+65")

bali_brew = Kopi.create(name: "Bali Brew", origin: bali, user: benn, roast: city_medium, price: 35)
kopi_o_kosong = Kopi.create(name: "Kopi O Kosong", origin: singapore, user: benn, roast: italian, price: 20)
cat_poop_coffee = Kopi.create(name: "Cat Poop Coffee", origin: vietnam, user: benn, roast: dark, price: 100)
