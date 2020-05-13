# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# costarica = Origin.new(location: "Costa Rica", phone: "12345678")
# costarica.save

# cinnamon = Roast.new(roast: "Cinnamon")
# cinnamon.save

light = Roast.new(roast: "Light")
light.save

citymedium = Roast.new(roast: "City/Medium")
citymedium.save

fullcity = Roast.new(roast: "Full City")
fullcity.save

dark = Roast.new(roast: "Dark")
dark.save

french = Roast.new(roast: "French")
french.save

italian = Roast.new(roast: "Italian")
italian.save

# kopi = Kopi.new(name: "green bean", roast: cinnamon, origin: costarica)
# kopi.save
