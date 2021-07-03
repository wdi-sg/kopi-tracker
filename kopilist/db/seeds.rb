# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



cinnamon = Roast.create(
  :roastedness => 'Cinnamon'
)

light = Roast.create(
  :roastedness => 'Light'
)

citymedium = Roast.create(
  :roastedness => 'City/Medium'
)

fullcity = Roast.create(
  :roastedness => 'Full City'
)

dark = Roast.create(
  :roastedness => 'Dark'
)

french = Roast.create(
  :roastedness => 'French'
)

italian = Roast.create(
  :roastedness => 'Italian'
)

jamaicafarm = Origin.create(
  :location => 'Jamaica', :phone => '12345678'
)

darkmocha = Kopi.create(
  :name => 'Dark Mocha', :roast => Roast.find(5), :origin => Origin.first
)