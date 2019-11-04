# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

arabica = Coffee.create(
  :name => "Arabica", :roastedness => "City/Medium", :origin => "Yemen",
)

mocha = Coffee.create(
  :name => "Mocha", :roastedness => "Light", :origin => "Italy",
)

flat_white = Coffee.create(
  :name => "Flat White", :roastedness => "Light", :origin => "Australia",
)

yuan_yang = Coffee.create(
  :name => "Yuan Yang", :roastedness => "Light", :origin => "Hong Kong",
)

espresso = Coffee.create(
  :name => "Espresso", :roastedness => "Italian", :origin => "Italy",
)

americano = Coffee.create(
  :name => "Americano", :roastedness => "Dark", :origin => "Latin America",
)

turkish = Coffee.create(
  :name => "Turkish", :roastedness => "Full City", :origin => "Turkey",
)
