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

Kopi.create(name: 'Orh Gao Dark Coffee' , origin_id: 1, roast_id: 5)
