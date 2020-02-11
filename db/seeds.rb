# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Singapore = Origin.create(location: "Singapore", phone: "65-8377-6662")
Australia = Origin.create(location: "Australia", phone: "61-3333-2222")
Scotland = Origin.create(location: "Scotland", phone: "44-42221-09984")

Kopi.create(name: "Kopi C Kosong", roast: "French", origin: Singapore)
Kopi.create(name: "Billybongo", roast: "Dark", origin: Australia)
Kopi.create(name: "Phwooooar", roast: "Full City", origin: Scotland)
Kopi.create(name: "Kopi C Siewdai", roast: "Cinnamon", origin: Singapore)
Kopi.create(name: "Haggis", roast: "Light", origin: Scotland)
Kopi.create(name: "Glasgie", roast: "City/Medium", origin: Scotland)
Kopi.create(name: "Kaya Roast Kopi", roast: "Italian", origin: Singapore)
