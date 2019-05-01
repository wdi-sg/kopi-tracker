# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Roastedness.create(name: 'Cinnamon')
Roastedness.create(name: 'Light')
Roastedness.create(name: 'City/Medium')
Roastedness.create(name: 'Full City')
Roastedness.create(name: 'Dark')
Roastedness.create(name: 'French')
Roastedness.create(name: 'Italian')

Origin.create(location: 'South Popperland', phone_number: '81845626')
Origin.create(location: 'Peijing', phone_number: '00545254')
Origin.create(location: 'York Xin City', phone_number: '98542545')