# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Origin.create(location: 'singapore', phone: '12345678')
Origin.create(location: 'china', phone: '65432418')
Origin.create(location: 'singapore', phone: '12312351')
Origin.create(location: 'china', phone: '13214112')
Origin.create(location: 'malaysia', phone: '11231341')
Origin.create(location: 'singapore', phone: '14235678')
Origin.create(location: 'korea', phone: '05901231')
Origin.create(location: 'japan', phone: '05918382')

Kopi.create(name: 'white kopi', roast: 'cinnamon', origin_id: 1)
Kopi.create(name: 'black kopi', roast: 'cinnamon', origin_id: 3)
Kopi.create(name: 'grey kopi', roast: 'light', origin_id: 2)
Kopi.create(name: 'yinyang kopi', roast: 'light', origin_id: 1)
Kopi.create(name: 'teh kopi', roast: 'city/medium', origin_id: 2)
Kopi.create(name: 'bing kopi', roast: 'full city', origin_id: 4)
Kopi.create(name: 'ling kopi', roast: 'dark', origin_id: 4)
Kopi.create(name: 'americano kopi', roast: 'full city', origin_id: 6)
Kopi.create(name: 'americano kopi', roast: 'full city', origin_id: 4)
Kopi.create(name: 'fragance kopi', roast: 'dark', origin_id: 1)
Kopi.create(name: 'strong kopi', roast: 'french', origin_id: 2)
Kopi.create(name: 'weak kopi', roast: 'italian', origin_id: 5)