# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

origin1 = Origin.create(:location => 'Brazil', :number => '+55 1234567')
origin2 = Origin.create(:location => 'Vietnam', :number => '+84 1234567')
origin3 = Origin.create(:location => 'Colombia', :number => '+57 1234567')
origin4 = Origin.create(:location => 'Indonesia', :number => '+62 1234567')
origin5 = Origin.create(:location => 'Ethiopia', :number => '+251 1234567')
origin6 = Origin.create(:location => 'India', :number => '+91 1234567')
origin7 = Origin.create(:location => 'Honduras', :number => '+9 1234567')

kopi1 = Kopi.create(:name => 'Kopi O', :origin_id => '7', :roast_id => '5')
kopi2 = Kopi.create(:name => 'Vietnam Kopi', :origin_id => '2', :roast_id => '4')
kopi3 = Kopi.create(:name => 'Kopi Siew Dai', :origin_id => '7', :roast_id => '5')
kopi4 = Kopi.create(:name => 'Kopi C', :origin_id => '4', :roast_id => '3')
kopi5 = Kopi.create(:name => 'Cinammon Kopi', :origin_id => '1', :roast_id => '1')
kopi6 = Kopi.create(:name => 'Yuan Yang', :origin_id => '6', :roast_id => '2')
kopi7 = Kopi.create(:name => 'Cappucino', :origin_id => '5', :roast_id => '6')
kopi8 = Kopi.create(:name => 'Latte', :origin_id => '3', :roast_id => '7')
kopi9 = Kopi.create(:name => 'Frappucino', :origin_id => '1', :roast_id => '4')
kopi10 = Kopi.create(:name => 'Long Black', :origin_id => '4', :roast_id => '5')

roast1 = Roast.create(:name => 'Cinnamon')
roast2 = Roast.create(:name => 'Light')
roast3 = Roast.create(:name => 'City/Medium')
roast4 = Roast.create(:name => 'Full City')
roast5 = Roast.create(:name => 'Dark')
roast6 = Roast.create(:name => 'French')
roast7 = Roast.create(:name => 'Italian')
