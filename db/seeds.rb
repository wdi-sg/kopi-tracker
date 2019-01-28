# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# origin_list = [
#   [ "Winders", "Pops Ave", "27164178"],
#   [ "Poppers", "Cliffs of Dover", "343253" ],
#   [ "Halliwell", "Umbrage Street", "353252525" ],
# ]

# origin_list.each do |name, location, phone|
#   Origin.create( name: name, location:location, phone:phone )
# end

coffee_list = [
  [ "Plimp Plomp", "Plam Ave", 2, 13],
  [ "lolollo", "Plam Ave", 2, 8],
  [ "Good Coffee", "Pirate Ave", 2, 4],
  [ "Hanovar", "Pirate Ave", 3, 7],
  [ "Blumhouse", "Poseidon Street", 3, 7],
  [ "Gilligan", "Island", 4, 47],
  [ "Gold Label", "Gold Town", 4, 17]
]

coffee_list.each do |name, roast, origin, price|
  Coffee.create( name:name, roast:roast, origin_id:origin, price:price )
end