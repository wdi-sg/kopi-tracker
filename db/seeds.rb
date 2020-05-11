# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

origins_list = [
  ["State coffee", "84930293"],
  ["Scar beans", "43920293"],
  ["Punchin roast", "64673729"],
  ["Blue Label", "82736483"]
]

origins_list.each do |location, phone|
  Origin.create(location: location, phone: phone)
end

kopis_list = [
  ["What the flend", 1, 2],
  ["Al Capacino", 2, 3],
  ["Tom Brews", 5, 1],
  ["Anne Mochaway", 6, 4],
  ["Christoph Maltz", 3, 1],
  ["Frappe Mcconnaughey", 7, 3],
  ["Full Giamatti", 2, 2],
  ["Java Bale", 3, 2],
  ["Regular L Jackson", 1, 4]
]

kopis_list.each do |name, roast_id, origin_id|
  Kopi.create(name: name, roast_id: roast_id, origin_id: origin_id)
end

roasts_list = [
  "Cinnamon",
  "Light",
  "City/Medium",
  "Full City",
  "Dark",
  "French",
  "Italian"
]

roasts_list.each do |roastname|
  Roast.create(name: roastname)
end


