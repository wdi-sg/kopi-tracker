# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

arabica = Kopi.create(
  :name => "Arabica", :roastedness => "City/Medium", :origin => "Yemen"
)

mocha = Kopi.create(
  :name => "Mocha", :roastedness => "Light", :origin => "Italy"
)

flat_white = Kopi.create(
  :name => "Flat White", :roastedness => "Light", :origin => "Australia"
)

yuan_yang = Kopi.create(
  :name => "Yuan Yang", :roastedness => "Light", :origin => "Hong Kong"
)

espresso = Kopi.create(
  :name => "Espresso", :roastedness => "Italian", :origin => "Italy"
)

americano = Kopi.create(
  :name => "Americano", :roastedness => "Dark", :origin => "Latin America"
)

turkish = Kopi.create(
  :name => "Turkish", :roastedness => "Full City", :origin => "Turkey"
)
