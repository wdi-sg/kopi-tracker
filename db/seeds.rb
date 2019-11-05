# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
australia = Origin.create(:location => 'Australia', :phone => '+61')
singapore = Origin.create(:location => 'Singapore', :phone => '+65')

blueMountain = Kopi.create(:name => "Blue Mountain", :roast => "Charred", :origin => australia)