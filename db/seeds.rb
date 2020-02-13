# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Singapore = Origin.create(location: "Singapore", phone: "65-8377-6662")
# Australia = Origin.create(location: "Australia", phone: "61-3333-2222")
# Scotland = Origin.create(location: "Scotland", phone: "44-42221-09984")

# French = Roast.create(name: "Cinnamon")
# Light = Roast.create(name: "Light")
# Medium = Roast.create(name: "City/Medium")
# Full = Roast.create(name: "Full City")
# Dark = Roast.create(name: "Dark")
# French = Roast.create(name: "French")
# Italian = Roast.create(name: "Italian")

Kopi.update(name: "Kopi C Kosong", roast: French, origin: Singapore)
Kopi.update(name: "Billybongo", roast: Dark, origin: Australia)
Kopi.update(name: "Phwooooar", roast: Full, origin: Scotland)
Kopi.update(name: "Kopi C Siewdai", roast: Cinnamon, origin: Singapore)
Kopi.update(name: "Haggis", roast: Light, origin: Scotland)
Kopi.update(name: "Glasgie", roast: Medium, origin: Scotland)
Kopi.update(name: "Kaya Roast Kopi", roast: Italian, origin: Singapore)
