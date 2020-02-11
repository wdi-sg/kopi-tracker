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
		k3 = Kopi.create(name:"k1", origin_id:"1", roast_id:"1")
		k4 = Kopi.create(name:"k2", origin_id:"1", roast_id:"2")
		k3 = Kopi.create(name:"k3", origin_id:"2", roast_id:"3")
		k5 = Kopi.create(name:"k4", origin_id:"2", roast_id:"4")
		k6 = Kopi.create(name:"k5", origin_id:"3", roast_id:"5")
		k7 = Kopi.create(name:"k6", origin_id:"3", roast_id:"2")

