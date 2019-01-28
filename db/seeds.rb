# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


farm = Origin.new(location: "Singapore", phone: 00000000)

cinnamon = Cup.new(name: "Cinnamon", roast: "roasted", origin: farm)
light = Cup.new(name: "Light", roast: "roast", origin: farm)
city = Cup.new(name: "City", roast: "roasts", origin: farm)
full_city = Cup.new(name: "Full City", roast: "no roast", origin: farm)
dark = Cup.new(name: "Dark", roast: "unroast", origin: farm)
french = Cup.new(name: "French", roast: "non-roast", origin: farm)
italian = Cup.new(name: "Italian", roast: "very roast", origin: farm)

Compare.create(roast: "roasted", cup: cinnamon)
Compare.create(roast: "roast", cup: light)
Compare.create(roast: "roasts", cup: city)
Compare.create(roast: "no roast", cup: full_city)
Compare.create(roast: "unroast", cup: dark)
Compare.create(roast: "non-roast", cup: french)
Compare.create(roast: "very roast", cup: italian)