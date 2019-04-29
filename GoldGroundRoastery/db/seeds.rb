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

Origin.create(location: "Indonesia", phone: "119-297-6442")
Origin.create(location: "Columbia", phone: "998-666-8624")
Origin.create(location: "India", phone: "99885263")