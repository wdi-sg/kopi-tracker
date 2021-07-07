# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Kopi.create(location: 'Brazil', phone: 73648938)


Origin.create(location: 'Brazil', phone: 73648938)
Origin.create(location: 'Germany', phone: 78474937)
Origin.create(location: 'Malaysia', phone: 53840876)

cinnamon = Roast.create({name: 'Cinnamon'})
light = Roast.create({name: 'Light'})
medium = Roast.create({name: 'Medium'})
full_city = Roast.create({name: 'Full City'})
dark = Roast.create({name: 'Dark'})
french = Roast.create({name: 'French'})
italian = Roast.create({name: 'Italian'})