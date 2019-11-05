# Origin.create(location: 'singapore', phone: '12345678')

# mocha = Kopi.create(
#   :name => "Mocha", :roast => "Light", :origin_id => 1
# )
# byebug
# puts "seeding!"

Origin.create(location: "Shenzen", phone: "13092603532")
Origin.create(location: "Taiwan", phone: "563748219")
Origin.create(location: "France", phone: "3131313")
Origin.create(location: "Indonesia", phone: "3423432")
Origin.create(location: "Singapore", phone: "45646546")
Origin.create(location: "Saudi Arabia", phone: "6464566")
Origin.create(location: "Italy", phone: "942523423")

Kopi.create(name: "White Kopi", roast: "Cinnamon", origin_id: 1)
Kopi.create(name: "Black Kopi", roast: "Dark", origin_id: 3)
Kopi.create(name: "Yuan Yang", roast: "Light", origin_id: 2)
Kopi.create(name: "Americano", roast: "City/Medium", origin_id: 1)
Kopi.create(name: "Espresso", roast: "Italian", origin_id: 7)
Kopi.create(name: "Arabica", roast: "Dark", origin_id: 6)
Kopi.create(name: "French Espresso", roast: "French", origin_id: 3)
Kopi.create(name: "Kopi Luak", roast: "Full City", origin_id: 4)
Kopi.create(name: "Kopi Gao Gao", roast: "Full City", origin_id: 5)
