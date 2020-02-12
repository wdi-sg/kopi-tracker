# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roast1 = Roastedness.create(:name => 'Cinnamon')
roast2 = Roastedness.create(:name => 'Light')
roast3 = Roastedness.create(:name => 'City/Medium')
roast4 = Roastedness.create(:name => 'Full City')
roast5 = Roastedness.create(:name => 'Dark')
roast6 = Roastedness.create(:name => 'French')
roast7 = Roastedness.create(:name => 'Italian')