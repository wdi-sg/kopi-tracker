# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roasts = Roast.create([
                        {level: 1, name: 'Cinnamon'},
                        {level: 2, name: 'Light'},
                        {level: 3, name: 'City/Medium'},
                        {level: 4, name: 'Full City'},
                        {level: 5, name: 'Dark'},
                        {level: 6, name: 'French'},
                        {level: 7, name: 'Italian'}
                      ])
