# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Origin.create(location: 'Costa Rica', phone: 123456789)
Origin.create(location: 'Colombia', phone: 995995995)
Origin.create(location: 'Ethiopia', phone: 888888888)
Origin.create(location: 'Papua New Guinea', phone: 987654321)

Roast.create(name: 'Cinnamon')
Roast.create(name: 'Light')
Roast.create(name: 'City/Medium')
Roast.create(name: 'Full City')
Roast.create(name: 'Dark')
Roast.create(name: 'French')
Roast.create(name: 'Italian')



Koopi.create(name: 'Kona coffee', origin_id: 1, roast_id: 1, price: 2.50)
Koopi.create(name: 'Jamaica Blue Mountain', origin_id: 2, roast_id: 2, price: 2)
Koopi.create(name: 'Colombia Narino', origin_id: 2, roast_id: 5, price: 3)
Koopi.create(name: 'Costa Rica La CasacadaTarrazu', origin_id: 1, roast_id: 5, price: 2.50)
Koopi.create(name: 'Mocha Java', origin_id: 3, roast_id: 4, price: 4)
Koopi.create(name: 'Colombia Narino Dark', origin_id: 2, roast_id: 4, price: 3.50)
Koopi.create(name: 'Viennese Blend', origin_id: 4, roast_id: 3, price: 2)
Koopi.create(name: 'French Roast', origin_id: 4, roast_id: 6, price: 1.50)
Koopi.create(name: 'Cinna Blend', origin_id: 3, roast_id: 1, price: 3)
Koopi.create(name: 'Nommon Blend', origin_id: 1, roast_id: 1, price: 2)
Koopi.create(name: 'Italian Blend', origin_id: 1, roast_id: 7, price: 4)