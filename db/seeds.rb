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

Origin.create(phone: '12345678', location: 'Indonesia')
Origin.create(phone: '123456789', location: 'Colombia')
Origin.create(phone: '123456780', location: 'Puerto Rico')

Kopi.create(name: 'kopi1' , origin_id: 1, roast_id: 5)
Kopi.create(name: 'kopi2', origin_id: 2, roast_id: 6)
Kopi.create(name: 'kopi3', origin_id: 3, roast_id: 2)
Kopi.create(name: 'kopi4', origin_id: 2, roast_id: 4)
Kopi.create(name: 'kopi5', origin_id: 3, roast_id: 7)
Kopi.create(name: 'kopi6', origin_id: 4, roast_id: 3)

