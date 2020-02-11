# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# vietnam = Origin.create(location: "vietnam" , phone: "25235345")
# indonesia = Origin.create(location: "indonesia" , phone: "4075934")
# brazil = Origin.create(location: "brazil" , phone: "93472194")
# france = Origin.create(location: "france" , phone: "83412012")
# italy = Origin.create(location: "italy" , phone: "14124532")

arabica = Kopi.create(name: "arabica" , roast: "Cinnamon", origin_id: 2)
java = Kopi.create(name: "java" , roast: "Light", origin_id: 3)
robusta = Kopi.create(name: "robusta" , roast: "City_Medium", origin_id: 1)
liberica = Kopi.create(name: "liberica" , roast: "Full_City", origin_id: 4)
# espresso = Kopi.create(name: "abc" , roast: "Dark")
# defg = Kopi.create(name: "defg" , roast: "French")
# hij = Kopi.create(name: "hij" , roast: "Italian")