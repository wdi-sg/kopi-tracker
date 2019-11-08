# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Origin.create(location: "China", phone: "123456")
# Origin.create(location: "India", phone: "654321")
# Origin.create(location: "Singapore", phone: "756352")
# Origin.create(location: "Northern Ireland", phone: "815263")
# Origin.create(location: "UK", phone: "768936")
# Origin.create(location: "New York", phone: "182839")
# Origin.create(location: "Indonesia", phone: "727272")

Kopi.create(name: "Cappucino", roastedness: "Cinnamon", origin_id: 1)
Kopi.create(name: "Espresso", roastedness: "Light", origin_id: 3)
Kopi.create(name: "Latte", roastedness: "City", origin_id: 2)
Kopi.create(name: "Caffe Latte", roastedness: "Full City", origin_id: 4)
Kopi.create(name: "Mocha", roastedness: "Dark", origin_id: 6)
Kopi.create(name: "Heroine Coffee", roastedness: "French", origin_id: 7)
Kopi.create(name: "Espresso", roastedness: "Italian", origin_id: 5)
