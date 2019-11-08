# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
owl = Farm.create(
  :name => 'owl', :location => 'sri lanka', :phone => '333444'
)
canary = Farm.create(
  :name => 'canary', :location => 'china', :phone => '666999'
)
falcon = Farm.create(
  :name => 'falcon', :location => 'UAE', :phone => '555666'
)
dove = Farm.create(
  :name => 'dove', :location => 'england', :phone => '111000'
)

cinnamon = Roast.create(
  :name => 'cinnamon'
)
light = Roast.create(
  :name => 'light'
)
medium = Roast.create(
  :name => 'medium'
)
fullcity = Roast.create(
  :name => 'full city'
)
dark = Roast.create(
  :name => 'dark'
)
french = Roast.create(
  :name => 'french'
)
italian = Roast.create(
  :name => 'italian'
)

poof = Kopi.create(
  :name => 'poof', :roast => fullcity, :farm => dove
)
winy = Kopi.create(
  :name => 'winy', :roast => cinnamon, :farm => canary
)