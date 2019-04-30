# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Roast.create([{ roastedness: 'Cinnamon' }, { roastedness: 'Light' }, { roastedness: 'City/Medium' }, { roastedness: 'Full City' }, { roastedness: 'Dark' }, { roastedness: 'French' }, { roastedness: 'Italian' }])

# Kopi.create(name: 'Avanti', roast: 2, origin: 'South America')
# Kopi.create(name: 'Colombian', roast: 3, origin: 'South America')
# Kopi.create(name: 'Signature', roast: 3, origin: 'South America')
# Kopi.create(name: 'Signature Organic', roast: 3, origin: 'South America')
# Kopi.create(name: 'Sumatra', roast: 4, origin: 'South America')
# Kopi.create(name: 'Costa Rican', roast: 4, origin: 'Central America')
# Kopi.create(name: 'Sun Coast Blend', roast: 4, origin: 'Central America')
# Kopi.create(name: 'De-Caf Blend', roast: 4, origin: 'South America')
# Kopi.create(name: 'Boulder Beans', roast: 4, origin: 'Central America')
# Kopi.create(name: 'Milano Blend', roast: 5, origin: 'Europe')
# Kopi.create(name: 'Pallino Blend', roast: 5, origin: 'Central America')
# Kopi.create(name: 'Guatemalan French', roast: 6, origin: 'Central America')

Origin.create(location: 'Colombia', phone: '2759908172')
Origin.create(location: 'Brazil', phone: '6750008172')
Origin.create(location: 'Costa Rica', phone: '5759908172')
Origin.create(location: 'Guatemala', phone: '9759908172')
Origin.create(location: 'Italy', phone: '9759908172')