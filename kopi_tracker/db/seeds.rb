# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

vietnam = Origin.create(location: "vietnam", phone:"4545678")
germany = Origin.create(location: "germany", phone:"22235467")

# Kopi.create(name: "japanese", roast: "light", origin: japan)
# Kopi.create(name: "tokyo", roast: "light", origin: japan)
# Kopi.create(name: "osaka", roast: "light", origin: japan)

cinnamon = Roast.new(name:"cinammon")
light = Roast.new(name:"light")
medium = Roast.new(name:"medium")
full_city = Roast.new(name:"full_city")
dark = Roast.new(name:"dark")
french = Roast.new(name:"french")
italian = Roast.new(name:"italian")

Kopi.create(name: "banana", roast: cinnamon, origin: vietnam)
Kopi.create(name: "strawberry", roast: light, origin: germany)
Kopi.create(name: "blueberry", roast: medium, origin: vietnam)
Kopi.create(name: "apple", roast: full_city, origin: germany)
Kopi.create(name: "guava", roast: dark, origin: vietnam)
Kopi.create(name: "grapes", roast: french, origin: germany)
Kopi.create(name: "chocolate", roast: italian, origin: vietnam)

