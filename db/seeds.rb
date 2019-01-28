# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

origin_list = [
  [ "Winders", "Pops Ave", "27164178"],
  [ "Poppers", "Cliffs of Dover", "343253" ],
  [ "Halliwell", "Umbrage Street", "353252525" ],
]

origin_list.each do |name, location, phone|
  Origin.create( name: name, location:location, phone:phone )
end