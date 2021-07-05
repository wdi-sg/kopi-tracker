# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Roast.create([{ roastedness: 'Cinnamon' }, { roastedness: 'Light' }, { roastedness: 'City/Medium' }, { roastedness: 'Full City' }, { roastedness: 'Dark' }, { roastedness: 'French' }, { roastedness: 'Italian' }])

Origin.create(location: 'Colombia', phone: '2759908172')
Origin.create(location: 'Brazil', phone: '6750008172')
Origin.create(location: 'Costa Rica', phone: '5759908172')
Origin.create(location: 'Guatemala', phone: '9759908172')
Origin.create(location: 'Italy', phone: '9759908172')
Origin.create(location: 'Singapore', phone: '6590111234')

Kopi.create(name: 'Avanti', roast_id: 2, origin_id: 3)
Kopi.create(name: 'Kopi C Peng', roast_id: 3, origin_id: 6)
Kopi.create(name: 'Affogato', roast_id: 3, origin_id: 4)

Customer.create([{ name: 'Waldo' }, { name: 'John' }, { name: 'Uncle Sam' }, { name: 'Susan' }, { name: 'Ben' }, { name: 'Mike' }, { name: 'Nancy' }])