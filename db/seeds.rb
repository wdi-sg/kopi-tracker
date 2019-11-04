# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

origin1 = Origin.create(:location => 'Vietnam', :phone => '90191101')
origin2 = Origin.create(:location => 'Brazil', :phone => '90191102')

kopi1 = Kopi.create(:name => 'Kopi 1', :roast => 'Cinnamon', :origin => origin1)
kopi2 = Kopi.create(:name => 'Kopi 2', :roast => 'Light', :origin => origin1)
kopi3 = Kopi.create(:name => 'Kopi 3', :roast => 'Cinnamon', :origin => origin2)