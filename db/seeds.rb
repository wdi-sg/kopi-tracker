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



arabica = Kopi.create(name: 'Arabica',roast: italian, origin: africa, price: 2.1)

robusta = Kopi.create(name: 'Robusta',roast: light, origin: vietnam , price: 2.2)

sulawesi = Kopi.create(name: 'Sulawesi',roast: dark, origin: sumatra , price: 2.3)

benguet = Kopi.create(name: 'Benguet',roast: italian, origin: phillipines , price: 2.4)

santos = Kopi.create(name: 'Santos',roast: french, origin: s_america , price: 2.5)

caliente = Kopi.create(name: 'Caliente',roast: cinnamon, origin: mexico , price: 2.6)

Order.create(kopi: arabica, weight: 5.0)
Order.create(kopi: robusta, weight: 6.0)
Order.create(kopi: sulawesi, weight: 7.0)
Order.create(kopi: benguet, weight: 8.0)
Order.create(kopi: santos, weight: 9.0)
Order.create(kopi: caliente, weight: 10.0)