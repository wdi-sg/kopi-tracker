# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Roast.create(roast: 'Cinnamon')
Roast.create(roast: 'Light')
Roast.create(roast: 'City/Medium')
Roast.create(roast: 'Full City')
Roast.create(roast: 'Dark')
Roast.create(roast: 'French')
Roast.create(roast: 'Italian')

Origin.create(location: 'Australia', phone: '892 4673')
Origin.create(location: 'Ghana', phone: '623 5908')
Origin.create(location: 'Spain', phone: '210 9556')
Origin.create(location: 'Brazil', phone: '987 2533')
Origin.create(location: 'Colombia', phone: '112 4776')
Origin.create(location: 'France', phone: '761 2367')
Origin.create(location: 'Italy', phone: '788 6504')
