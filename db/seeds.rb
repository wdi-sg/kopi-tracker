# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
		

# Roasts		
		cinnamon = Roast.create(name:"cinnamon")
		light = Roast.create(name:"light")
		medium = Roast.create(name:"medium")
		fullcity = Roast.create(name:"fullcity")
		italian = Roast.create(name:"italian")

#Origin
		america = Origin.create(location:"america",phone:"1234")
		germany = Origin.create(location:"germany",phone:"4567")
		british = Origin.create(location:"british",phone:"1209")

# Kopi 
		k3 = Kopi.create(name:"k1", origin_id:"1", roast_id:"1", price:56)
		k4 = Kopi.create(name:"k2", origin_id:"1", roast_id:"2", price:95)
		k3 = Kopi.create(name:"k3", origin_id:"2", roast_id:"3", price:47)
		k5 = Kopi.create(name:"k4", origin_id:"2", roast_id:"4", price:38)
		k6 = Kopi.create(name:"k5", origin_id:"3", roast_id:"5", price:29)
		k7 = Kopi.create(name:"k6", origin_id:"3", roast_id:"2", price:51)

# Order 
		 o1 = Order.create(kopi_id:1, weight:54 )
		 o2 = Order.create(kopi_id:2, weight:34 )
		 o3 = Order.create(kopi_id:3, weight:24 )
		 o4 = Order.create(kopi_id:4, weight:53 )
		 o5 = Order.create(kopi_id:5, weight:57 )
		 o6 = Order.create(kopi_id:6, weight:58 )
		 o7 = Order.create(kopi_id:1, weight:59 )
		 o8 = Order.create(kopi_id:2, weight:64 )