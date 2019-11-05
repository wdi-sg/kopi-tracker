# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

canary = Farm.create(
  :name => 'canary', :location => 'china', :phone => '666999'
)

dove = Farm.create(
  :name => 'dove', :location => 'england', :phone => '111000'
)

poof = Kopi.create(
  :name => 'poof', :roast => 'full city', :farm => dove
)

winy = Kopi.create(
  :name => 'winy', :roast => 'cinnamon', :farm => canary
)