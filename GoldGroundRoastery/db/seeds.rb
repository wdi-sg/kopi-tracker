# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  # Character.create(name: 'Luke', movie: movies.first)

Roast.create(roast: "Cinnamon")
Roast.create(roast: "Light")
Roast.create(roast: "City/Medium")
Roast.create(roast: "Full City")
Roast.create(roast: "Dark")
Roast.create(roast: "French")
Roast.create(roast: "Italian")

Origin.create(name: "Sunaryo Sarib", location: "Indonesia", phone: "119-297-6442")
Origin.create(name: "Kanan Duril", location: "Columbia", phone: "998-666-8624")
Origin.create(name: "Dilma", location: "India", phone: "99885263")

Kopi.create(name: "sumatra", roast_id: 5, origin_id: 1, price_per_pound: 6.00)
Kopi.create(name: "javanese", roast_id: 4, origin_id: 1, price_per_pound: 7.65)
Kopi.create(name: "Black Gold", roast_id: 3, origin_id: 2, price_per_pound: 9.00)
Kopi.create(name: "Dharkan", roast_id: 5, origin_id: 3, price_per_pound: 8.40)