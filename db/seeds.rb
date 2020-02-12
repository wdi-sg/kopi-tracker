# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

singapore = Origin.create(location: "Singapore", phone: "13371337")
malaysia = Origin.create(location: "Malaysia", phone: "007234542")
indonesia = Origin.create(location: "Indonesia", phone: "123456789")

cinnamon = Roast.create(name: "Cinnamon")
light = Roast.create(name: "Light")
medium = Roast.create(name: "Medium")
full = Roast.create(name: "Full City")
dark = Roast.create(name: "Dark")
french = Roast.create(name: "French")
italian = Roast.create(name: "Italian")

banana = Kopi.create(name: "Banana Roast", roast: cinnamon, origin: singapore, pound_price: "3")
papaya = Kopi.create(name: "Papaya Roast", roast: light, origin: malaysia, pound_price: "2")
yeah = Kopi.create(name: "yeyeyeye Coffee", roast: medium, origin: malaysia, pound_price: "4")
wow = Kopi.create(name: "Wow Kopi", roast: full, origin: indonesia, pound_price: "2.5")
stuff = Kopi.create(name: "Kopi stuff'd", roast: dark, origin: indonesia, pound_price: "3.5")
foo = Kopi.create(name: "Foo Cof", roast: french, origin: singapore, pound_price: "6")
bar = Kopi.create(name: "Coffee Bar", roast: italian, origin: indonesia, pound_price: "7")

Order.create(weight: "5", kopi: banana)
Order.create(weight: "2", kopi: papaya)
Order.create(weight: "8", kopi: yeah)