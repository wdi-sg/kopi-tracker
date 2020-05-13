# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cinnamon = Roast.create( :roast_name => 'Cinnamon' )
light = Roast.create( :roast_name => 'Light' )
city = Roast.create( :roast_name => 'City/Medium' )
fullCity = Roast.create( :roast_name => 'Full City' )
dark = Roast.create( :roast_name => 'Dark' )
french = Roast.create( :roast_name => 'French' )
italian = Roast.create( :roast_name => 'italian' )