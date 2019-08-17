# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Roast.create(roastedness: "Cinnamon")
Roast.create(roastedness: "Light")
Roast.create(roastedness: "City/Medium")
Roast.create(roastedness: "Full City")
Roast.create(roastedness: "Dark")
Roast.create(roastedness: "French")
Roast.create(roastedness: "Italian")

Farm.create(location: "Singapore", phone: "9092 0123")
Farm.create(location: "USA", phone: "9810 6692 0123")
Farm.create(location: "Malaysia", phone: "6902 1092 0199")
Farm.create(location: "Canada", phone: "9999 2092 0129")
Farm.create(location: "Skyland", phone: "9810 0087 0392")
Farm.create(location: "Sri Lanka", phone: "9810 0092 0123")
Farm.create(location: "USA", phone: "9938 0292 1092")