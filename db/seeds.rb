# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Roast.create(name: 'Cinnamon')
Roast.create(name: 'Light')
Roast.create(name: 'City/Medium')
Roast.create(name: 'Full City')
Roast.create(name: 'Dark')
Roast.create(name: 'French')
Roast.create(name: 'Italian')

Origin.create(phone: '12345678', location: 'Malaysia')
Origin.create(phone: '+4477123456789', location: 'UK')
Origin.create(phone: '+99132456789', location: 'Indonesia')
Origin.create(phone: '+65123456789', location: 'Singapore')

Kopi.create(name: 'Orh Gao Dark Coffee' , origin_id: 1, roast_id: 5, price_per_kg: 3.00)
Kopi.create(name: 'Some French Malaysian Coffee', origin_id: 1, roast_id: 6, price_per_kg: 4.90)
Kopi.create(name: 'Awful British Coffee', origin_id: 2, roast_id: 2, price_per_kg: 2.00)
Kopi.create(name: 'London Coffee', origin_id: 2, roast_id: 4, price_per_kg: 5.00)
Kopi.create(name: 'Decent Bat Poo Coffee', origin_id: 3, roast_id: 7, price_per_kg: 10.00)
Kopi.create(name: 'Merlion Coffee', origin_id: 4, roast_id: 5, price_per_kg: 3.50)

Order.create(weight: 75.0, kopi_id: 4)
Order.create(weight: 200.0, kopi_id: 1)
Order.create(weight: 95.0, kopi_id: 3)
Order.create(weight: 25.0, kopi_id: 5)
Order.create(weight: 42.0, kopi_id: 6)
