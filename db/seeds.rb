# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

origins_list = [
  ["Cover For Growing Pot Farm", "123456789"],
  ["Exploits Its Workers Farm", "987654321"],
  ["Civet Cat Poop Farm", "092837457"],
  ["Chinese Money-laundering Farm", "56473829"]
]

origins_list.each do |location, phone|
  Origin.create(location: location, phone: phone)
end

roasts_list = [
  "Cinnamon",
  "Light",
  "City/Medium",
  "Full City",
  "Dark",
  "French",
  "Italian"
]

roasts_list.each do |roastname|
  Roast.create(name: roastname)
end

kopis_list = [
 ["Starfvcks Basic Blend", 1, 1, 3.2],
 ["KNNBCCBTL", 2, 2, 4],
 ["Starfvcks Rich Kids Blend", 3, 3, 4.1],
 ["PSCafe Rips You Off Blend", 4, 4, 4.3],
 ["Hipsters Only Blend", 5, 2, 5.25],
 ["Decaffeinated Because You Like The Taste Blend", 6, 1, 2.35],
 ["Arabica That Sounds Racist Blend", 7, 3, 1.25],
 ["Weak Blend For Americans", 2, 4, 0.25],
 ["Taste Like Farts Blend", 1, 4, 0.05]
]

kopis_list.each do |kopiname, roast_id, origin_id, price_per_pound|
  Kopi.create(name: kopiname, roast_id: roast_id, origin_id: origin_id, price_per_pound: price_per_pound)
end

orders_list = [
  [5.5, 3],
  [2.3, 2],
  [9.5, 1],
  [3, 1],
  [4.25, 6],
  [3.25, 7],
  [1.25, 4],
  [1.6, 5],
  [1.9, 4],
  [3.6, 3]
]

orders_list.each do |weight, kopi_id|
  Order.create(weight: weight, kopi_id: kopi_id)
end