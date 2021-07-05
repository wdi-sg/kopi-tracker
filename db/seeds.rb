# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Roast.destroy_all
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
Origin.create(location: "Singapore", phone: "1111 1111 1111")
Origin.create(location: "USA", phone: "1111 1111 2222")
Origin.create(location: "Malaysia", phone: "1111 1111 3333")
Origin.create(location: "Canada", phone: "1111 1111 4444")
Origin.create(location: "Skyland", phone: "1111 1111 5555")
Origin.create(location: "Sri Lanka", phone: "1111 1111 6666")
Origin.create(location: "USA", phone: "1111 1111 7777")
p "SEEDED Origin DATA"
##################################
#Order.destroy_all
#Order.create(kopi_id: "1", sale: "51.8")
#Order.create(kopi_id: "2", sale: "282.8")
#Order.create(kopi_id: "3", sale: "157.5")
#Order.create(kopi_id: "4", sale: "38.4")
#p "SEEDED ORDER DATA"