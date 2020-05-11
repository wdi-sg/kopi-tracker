# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
roast1 = Roast.create(:name => 'Cinnamon')
roast2 = Roast.create(:name => 'Lighy')
roast3 = Roast.create(:name => 'City/Medium')
roast4 = Roast.create(:name => 'Full city')
roast5 = Roast.create(:name => 'Dark')
roast6 = Roast.create(:name => 'French')
roast7 = Roast.create(:name => 'Italian')
#
origin1 = Origin.create(:location => 'London', :phone => '+44 20 7946 0620')
light = Origin.create(:location => 'Thailand', :phone => '+66-655-5829-10')


city_medium = Origin.create(:location => 'Hungary', :phone => '+36 55 423 480')
full_city = Origin.create(:location => 'Colombia', :phone => '+57-351-5557-864')

dark = Origin.create(:location => 'Canada', :phone => '+1-613-555-0106')

french = Origin.create(:location => 'Vietnam', :phone => '+84-355-5758-44')
italian = Origin.create(:location => 'Japan', :phone => '+81-905-5584-464')