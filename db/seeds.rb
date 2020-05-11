# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# roasts = Roast.create([
#     { name: 'Cinnamon' },
#     { name: 'Light' },
#     { name: 'City/Medium' },
#     { name: 'Full City' },
#     { name: 'Dark' },
#     { name: 'French' },
#     { name: 'Italian' }
# ])

# origins = Origin.create([
#     { location: 'Africa', phone: "1233" },
#     { location: 'Vietnam', phone: "1234" },
#     { location: 'Sumatra', phone: "1235" },
#     { location: 'Phillipines', phone: "1236" },
#     { location: 'South America', phone: "1237" },
#     { location: 'Mexico', phone: "1238" }
# ])

cinnamon = Roast.create(name: "Cinammon")
light = Roast.create(name: "Light")
medium = Roast.create(name: "City/Medium")
full_city = Roast.create(name: "Full City")
dark = Roast.create(name: "Dark")
french = Roast.create(name: "French")
italian = Roast.create(name: "Italian")

africa = Origin.create(location: "Africa" , phone: '1233')
vietnam = Origin.create(location: "Vietnam" , phone: '1234')
sumatra = Origin.create(location: "Sumatra" , phone: '1235')
phillipines = Origin.create(location: "Phillipines" , phone: '1236')
s_america = Origin.create(location: "South America" , phone: '1237')
mexico = Origin.create(location: "Mexico" , phone: '1238')



Kopi.create(name: 'Arabica',roast: italian, origin: africa)
Kopi.create(name: 'Robusta',roast: light, origin: vietnam )
Kopi.create(name: 'Sulawesi',roast: dark, origin: sumatra )
Kopi.create(name: 'Benguet',roast: italian, origin: phillipines )
Kopi.create(name: 'Santos',roast: french, origin: s_america )
Kopi.create(name: 'Caliente',roast: cinnamon, origin: mexico )