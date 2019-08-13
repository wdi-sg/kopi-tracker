# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
roast1 = Roastedness.create(name: 'Cinnamon')
roast2 = Roastedness.create(name: 'Light')
roast3 = Roastedness.create(name: 'City/Medium')
roast4 = Roastedness.create(name: 'Full City')
roast5 = Roastedness.create(name: 'Dark')
roast6 = Roastedness.create(name: 'French')
roast7 = Roastedness.create(name: 'Italian')

roast1.save
roast2.save
roast3.save
roast4.save
roast5.save
roast6.save
roast7.save

farm1 = Farm.create(name: 'Japan', phone: 111111)
farm2 = Farm.create(name: 'Italy', phone: 222222)
farm3 = Farm.create(name: 'India', phone: 333333)

farm1.save
farm2.save
farm3.save

kopi1 = Kopi.create(name:'He-Brew',priceperpound:4,roastedness:Roastedness.find(5),farm:Farm.find(1))
kopi2 = Kopi.create(name:'Cold-Brew',priceperpound:3,roastedness:Roastedness.find(3),farm:Farm.find(1))
kopi3 = Kopi.create(name:'Small-Brew',priceperpound:5,roastedness:Roastedness.find(4),farm:Farm.find(1))
kopi4 = Kopi.create(name:'Big-Brew',priceperpound:3,roastedness:Roastedness.find(4),farm:Farm.find(2))
kopi5 = Kopi.create(name:'Bang-Brew',priceperpound:2,roastedness:Roastedness.find(1),farm:Farm.find(2))
kopi6 = Kopi.create(name:'Coffee-Brew',priceperpound:2,roastedness:Roastedness.find(2),farm:Farm.find(3))
kopi7 = Kopi.create(name:'Tea-Brew',priceperpound:1,roastedness:Roastedness.find(2),farm:Farm.find(3))

kopi1.save
kopi2.save
kopi3.save
kopi4.save
kopi5.save
kopi6.save
kopi7.save
