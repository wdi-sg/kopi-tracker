# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Roast.destroy_all #to first destroy everything in the roast table then seeding the below so that there will be no duplicate entries
roasts = Roast.create([ {roastedness: 'Cinnamon'},
                        {roastedness: 'Light'},
                        {roastedness: 'City/Medium'},
                        {roastedness: 'Full City'},
                        {roastedness: 'Dark'},
                        {roastedness: 'French'},
                        {roastedness: 'Italian'}
                      ])

p "SEEDED ROAST DATA" # to give feedback that roast data have all been seeded

origins = Origin.create([{name: "Farmland", location: "Singapore", phone: "9092 0123"},
                          {name: "Overgrowth Farm", location: "USA", phone: "9810 0123"},
                          {name: "Forest Grump", location: "California", phone: "6902 1092 0199"},
                          {name: "Cooling Fan", location: "Canda", phone: "9999 2092 0129"},
                          {name: "High Up in the Sky", location: "Heaven", phone: "9810 0092 0123"},
                          {name: "Hidden Gem", location: "Moria", phone: "7239 3819 2000"},
                          {name: "Mole hill", location: "My Backyard", phone: "9231 7645"}
                        ])

p "SEEDED ORIGINS DATA" # to give feedback that origins data have all been seeded
