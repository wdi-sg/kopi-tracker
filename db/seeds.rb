# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# # Origins
# mercenta = Origin.create(:location => 'Vietnam', :phone => '81923712')
# caturra = Origin.create(:location => 'Brazil', :phone => '73512582')
# atlas = Origin.create(:location => 'India', :phone => '86137263')

# # Roasts
# cinnamon = Roast.create(:name => 'Cinnamon')
# light = Roast.create(:name => 'Light')
# city_medium = Roast.create(:name => 'City/Medium')
# full_city = Roast.create(:name => 'Full City')
# dark = Roast.create(:name => 'Dark')
# french = Roast.create(:name => 'French')
# italian = Roast.create(:name => 'Italian')

# Kopis
kopi_1 = Kopi.create(:name => 'Liberica', :roast_id => 3, :origin_id => 3)
kopi_2 = Kopi.create(:name => 'Liberica', :roast_id => 6, :origin_id => 3)
kopi_3 = Kopi.create(:name => 'Arabica', :roast_id => 1, :origin_id => 2)
kopi_4 = Kopi.create(:name => 'Arabica', :roast_id => 7, :origin_id => 2)
kopi_5 = Kopi.create(:name => 'Robusta', :roast_id => 2, :origin_id => 1)
kopi_6 = Kopi.create(:name => 'Robusta', :roast_id => 4, :origin_id => 2)