# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


cin = Roast.create( :roastedness => "Cinnamon", :user_id => 1 )

light = Roast.create( :roastedness => "Light", :user_id => 1 )

med = Roast.create( :roastedness => "Medium", :user_id => 1 )

full = Roast.create( :roastedness => "Full", :user_id => 1 )

dark = Roast.create( :roastedness => "Dark", :user_id => 1 )

french = Roast.create( :roastedness => "French", :user_id => 1 )

ital = Roast.create( :roastedness => "Italian", :user_id => 1 )