# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cinnamon = Roast.create!(kind: 'Cinnamon')
light = Roast.create!(kind: "Light")
medium = Roast.create!(kind: "Medium")
full_city = Roast.create!(kind: "Full City")
dark = Roast.create!(kind: "Dark")
french = Roast.create!(kind: "French")
italian = Roast.create!(kind: "Italian")

brazil = Origin.create!(location: "Brazil", phone_num: 123)
vietnam = Origin.create!(location:  "Vietnam", phone_num: 456)
colombia = Origin.create!(location: "Colombia", phone_num: 789)
switzerland = Origin.create!(location: "Switzerland", phone_num: 010)

latte = Kopi.create!(name:"Latte", roast_id: 2, origin_id: 2, price: 3, user_id: 1)
mocha = Kopi.create!(name:"Mocha", roast_id: 5, origin_id: 4, price: 5, user_id: 1)
cafe_au_lait = Kopi.create!(name:"Cafe Au Lait", roast_id: 2, origin_id: 3, price: 6, user_id: 1)
expresso = Kopi.create!(name:"Espresso", roast_id: 5, origin_id: 1, price: 8, user_id: 1)
americano = Kopi.create!(name:"Americano", roast_id: 7, origin_id: 2, price: 5, user_id: 1)
lungo = Kopi.create!(name:"Lungo", roast_id: 6, origin_id: 3, price: 12, user_id: 1)
macchiato = Kopi.create!(name:"Macchiato", roast_id: 4, origin_id: 1, price: 15, user_id: 1)

first_order = Order.create!(weight: 4, kopi_id: 1)
second_order = Order.create!(weight: 5, kopi_id: 2)
third_order = Order.create!(weight: 10, kopi_id: 3)