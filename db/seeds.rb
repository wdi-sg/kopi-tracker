# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
roast = Roast.create([{ roast_type: 'cinnamon', description: 'sweet'}, {roast_type: 'light', description: 'calming'}, {roast_type: 'city', description: 'paceful'}, {roast_type: 'full city', description: 'heavy'}, {roast_type: 'dark', description: 'aromatic'}, {roast_type: 'french', description: 'magnificent'}, {roast_type: 'italian', description: 'the best'}])