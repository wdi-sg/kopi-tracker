# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Origin.create(location: 'Changi', phone: 12345678)
Origin.create(location: 'YCK', phone: 87654321)
Origin.create(location: 'Jurong', phone: 23458123)

Kopi.create(name: 'black', roast: 'italian', origin_id: 1)
Kopi.create(name: 'gray', roast: 'full city', origin_id: 1)
Kopi.create(name: 'blue', roast: 'dark', origin_id: 1)

Kopi.create(name: 'mountain', roast: 'light', origin_id: 2)
Kopi.create(name: 'river', roast: 'city', origin_id: 2)
Kopi.create(name: 'sea', roast: 'french', origin_id: 2)

Kopi.create(name: 'town', roast: 'medium', origin_id: 3)
Kopi.create(name: 'sub', roast: 'cinnamon', origin_id: 3)
Kopi.create(name: 'dinky', roast: 'light', origin_id: 3)

p "DATA SEEDED"