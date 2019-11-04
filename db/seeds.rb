# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Roast.create([{ name: 'Cinnamon' },
#               { name: 'Light' },
#               { name: 'City/Medium' },
#               { name: 'Full City' },
#               { name: 'Dark' },
#               { name: 'French' }, { name: 'Italian' }])

# Origin.create([{ location: 'Java', phone: '123456789' }])

dark = Roast.find_by(name: 'Dark')
java = Origin.find_by(location: 'Java')
Kopi.create(name: 'Kopi-O', roast: dark, origin: java)
