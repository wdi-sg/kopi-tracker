# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
australia = Origin.create(:location => 'Seattle', :phone => '+1 206')
singapore = Origin.create(:location => 'Singapore', :phone => '+65')

realgood = Kopi.create(:name => "Real Good Coffee Co ", :roast => "Light Roast", :origin => Seattle)