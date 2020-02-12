# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# origins
# vietnam = Origin.create(location: "Vietnam" , phone: "25235345")
# indonesia = Origin.create(location: "Indonesia" , phone: "4075934")
# brazil = Origin.create(location: "Brazil" , phone: "93472194")
# france = Origin.create(location: "France" , phone: "83412012")
# italy = Origin.create(location: "Italy" , phone: "14124532")

# roasts
# cinnamon = Roast.create(name: "Cinnamon")
# light = Roast.create(name: "Light")
# city_medium = Roast.create(name: "City/Medium")
# full_city = Roast.create(name: "Full City")
# dark = Roast.create(name: "Dark")
# french = Roast.create(name: "French")
# italian = Roast.create(name: "Italian")

# kopis
# arabica = Kopi.create(name: "arabica" , roast: cinnamon, origin_id: 2 , roast_id: 1)
java = Kopi.create(name: "java" , origin_id: 2, roast_id: 2)
robusta = Kopi.create(name: "robusta" , origin_id: 1, roast_id: 3)
liberica = Kopi.create(name: "liberica" , origin_id: 4, roast_id: 4)
espresso = Kopi.create(name: "abc" , origin_id: 3, roast_id: 5)
defg = Kopi.create(name: "defg" , origin_id: 4, roast_id: 6)
hij = Kopi.create(name: "hij" , origin_id: 5, roast_id: 7)
