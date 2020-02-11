# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# singapore = Origin.create(location: "Singapore", phone: "13371337")
# malaysia = Origin.create(location: "Malaysia", phone: "007234542")
# indonesia = Origin.create(location: "Indonesia", phone: "123456789")

# Kopi.create(name: "Banana", roast: "Cinnamon", origin: singapore)
# Kopi.create(name: "Papaya", roast: "Light", origin: singapore)
# Kopi.create(name: "yeyeyeye", roast: "Medium", origin: singapore)
# Kopi.create(name: "Wow", roast: "Full City", origin: singapore)
# Kopi.create(name: "Stuff", roast: "Dark", origin: singapore)
# Kopi.create(name: "Foo", roast: "French", origin: singapore)
# Kopi.create(name: "Bar", roast: "Italian", origin: singapore)

# Kopi.create(name: "SamRoast", roast: "Cinnamon", origin: malaysia)
# Kopi.create(name: "RobRoast", roast: "Light", origin: malaysia)
# Kopi.create(name: "KunRoast", roast: "Medium", origin: malaysia)
# Kopi.create(name: "BenRoast", roast: "Full City", origin: malaysia)
# Kopi.create(name: "AngelRoast", roast: "Dark", origin: malaysia)
# Kopi.create(name: "RachelleRoast", roast: "French", origin: malaysia)
# Kopi.create(name: "AkiraRoast", roast: "Italian", origin: malaysia)

# Kopi.create(name: "Voodoo", roast: "Cinnamon", origin: indonesia)
# Kopi.create(name: "Corona", roast: "Light", origin: indonesia)
# Kopi.create(name: "Wuhan", roast: "Medium", origin: indonesia)
# Kopi.create(name: "Black Magic", roast: "Full City", origin: indonesia)
# Kopi.create(name: "Yeezus", roast: "Dark", origin: indonesia)
# Kopi.create(name: "Sam SQL", roast: "French", origin: indonesia)
# Kopi.create(name: "VapeGod", roast: "Italian", origin: indonesia)

goldenRoast = Kopi.create(name: "Golden SuperRoast", roast: "Light", pound_price: "1.5", origin_id: 1)

Order.create(weight: "5", kopi: goldenRoast)