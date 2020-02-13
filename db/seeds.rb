# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Roast.create(:name => 'One')
Roast.create(:name => 'Two')
Roast.create(:name => 'Three')
Roast.create(:name => 'Four')
Roast.create(:name => 'Five')
Roast.create(:name => 'Six')
Roast.create(:name => 'Seven')


Origin.create(:location => 'Sri Lanka', :phone => '1234567')
Origin.create(:location => 'France', :phone => '1234567')
Origin.create(:location => 'Italy', :phone => '1234567')


Kopi.create(:name => 'Apple', :roast_id => '1', :origin_id => '1')



Customer.create(:name => 'Haruki')
Customer.create(:name => 'Poopsie')
Customer.create(:name => 'Johnny')
Customer.create(:name => 'Bathsheba')