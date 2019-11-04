# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Origin.create(location: 'Kenya', phone: '12345678')
Origin.create(location: 'Tanzania', phone: '22222222')
Origin.create(location: 'Hawaii', phone: '33332222')
Origin.create(location: 'Jamaica', phone: '14443432')
Origin.create(location: 'Indonesia', phone: '34343434')
Origin.create(location: 'Central America', phone: '43243234')

Roast.create(name: "Light")
Roast.create(name: "City/Medium")
Roast.create(name: "Full City")
Roast.create(name: "Dark")
Roast.create(name: "French")
Roast.create(name: "Italian")

# Kopi.create(name: 'Colombia', roast: 'Light', origin_id: 6)
# Kopi.create(name: 'Kenya AA', roast: 'Dark', origin_id: 1)
# Kopi.create(name: 'Cow Tipper', roast: 'City/Medium', origin_id: 6)
# Kopi.create(name: 'Shot Tower Espresso', roast: 'Dark', origin_id: 6)
# Kopi.create(name: 'Hawaiian Kona', roast: 'City/Medium', origin_id: 3)
# Kopi.create(name: 'Blue Mountain', roast: 'City/Medium', origin_id: 4)
# Kopi.create(name: 'Peaberry Beans', roast: 'City/Medium', origin_id: 2)
# Kopi.create(name: 'Sumatra Mandheling', roast: 'Dark', origin_id: 5)
# Kopi.create(name: 'Central American Geisha', roast: 'Light', origin_id: 6)

Kopi.create(name: 'Colombia', roast: 'Light', origin: 'Central America')
Kopi.create(name: 'Kenya AA', roast: 'Dark', origin: 'Kenya')
Kopi.create(name: 'Cow Tipper', roast: 'City/Medium', origin: 'Central America')
Kopi.create(name: 'Shot Tower Espresso', roast: 'Dark', origin: 'Central America')
Kopi.create(name: 'Hawaiian Kona', roast: 'City/Medium', origin: 'Hawaii')
Kopi.create(name: 'Blue Mountain', roast: 'City/Medium', origin: 'Jamaica')
Kopi.create(name: 'Peaberry Beans', roast: 'City/Medium', origin: 'Tanzania')
Kopi.create(name: 'Sumatra Mandheling', roast: 'Dark', origin: 'Indonesia')
Kopi.create(name: 'Central American Geisha', roast: 'Light', origin: 'Central America')