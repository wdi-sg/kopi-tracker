# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


cin = Roast.create( :roastedness => "Cinnamon" )

light = Roast.create( :roastedness => "Light" )

med = Roast.create( :roastedness => "Medium" )

full = Roast.create( :roastedness => "Full" )

dark = Roast.create( :roastedness => "Dark" )

french = Roast.create( :roastedness => "French" )

ital = Roast.create( :roastedness => "Italian" )