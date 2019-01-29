# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rone = Roast.create(name: "Cinnamon", roastedness: 1)
rtwo = Roast.create(name: "Light", roastedness: 2)
rthree = Roast.create(name: "City/Medium", roastedness: 3)
rfour = Roast.create(name: "Full City", roastedness: 4)
rfive = Roast.create(name: "Dark", roastedness: 5)
rsix = Roast.create(name: "French", roastedness: 6)
rseven = Roast.create(name: "Italian", roastedness: 7)

one = Origin.create(location: "Atlantis", phone: 999)
two = Origin.create(location: "Mount Olympus", phone: 999)
three = Origin.create(location: "Hell", phone: 999)

Coffeelist.create(name: "Arusha" , origin: one, roast: rone)
Coffeelist.create(name: "Benguet", origin: one, roast: rtwo)
Coffeelist.create(name: "Bergendal", origin: two, roast: rthree)
Coffeelist.create(name: "Blue Mountain", origin: two, roast: rfour)
Coffeelist.create(name: "Bourbon", origin: three, roast: rfive)
Coffeelist.create(name: "Catuai", origin: three, roast: rsix)
Coffeelist.create(name: "Catimo", origin: three, roast: rseven)