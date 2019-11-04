# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Origin.create(location: 'Location A', phone: '1')
Origin.create(location: 'Location B', phone: '2')
Origin.create(location: 'Location C', phone: '3')
Origin.create(location: 'Location D', phone: '4')
Origin.create(location: 'Location E', phone: '5')
Origin.create(location: 'Location F', phone: '6')
Origin.create(location: 'Location D', phone: '7')

Roast.create(name: "Cinnamon")
Roast.create(name: "Light")
Roast.create(name: "City/Medium")
Roast.create(name: "Full City")
Roast.create(name: "Dark")
Roast.create(name: "French")
Roast.create(name: "Italian")

Kopi.create(name: 'my kopi', roast_id: 1, origin_id: 1)
Kopi.create(name: 'your kopi', roast_id: 2, origin_id: 2)
Kopi.create(name: 'his kopi', roast_id: 3, origin_id: 3)
Kopi.create(name: 'her kopi', roast_id: 4, origin_id: 4)
Kopi.create(name: 'their kopi', roast_id: 5, origin_id: 5)
Kopi.create(name: 'our kopi', roast_id: 6, origin_id: 6)
Kopi.create(name: 'no one kopi', roast_id: 7, origin_id: 7)
