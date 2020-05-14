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

Origin.create(location: 'Brazil', phone: '605-329-4959')
Origin.create(location: 'Vietnam', phone: '152-329-4959')
Origin.create(location: 'USA', phone: '415-329-4959')
Origin.create(location: 'Colombia', phone: '015-329-4959')

Kopi.create(name: "Liberica", roast_id: 1, origin_id: 1, user_id: 1)
Kopi.create(name: "Robusta", roast_id: 2, origin_id: 2, user_id: 1)
Kopi.create(name: "Arabica", roast_id: 3, origin_id: 3, user_id: 1)
Kopi.create(name: "Robusta", roast_id: 4, origin_id: 2, user_id: 1)
Kopi.create(name: "Arabica", roast_id: 5, origin_id: 4, user_id: 1)
Kopi.create(name: "Arabica", roast_id: 6, origin_id: 1, user_id: 1)
Kopi.create(name: "Excelsa", roast_id: 4, origin_id: 4, user_id: 1)