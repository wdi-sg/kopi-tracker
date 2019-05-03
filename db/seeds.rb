# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

roasts = Roast.create([
	{roast: 'cinnamon'},
	{roast: 'light'},
	{roast: 'city/medium'},
	{roast: 'full city'},
	{roast: 'dark'},
	{roast: 'french'},
	{roast: 'italian'}
])

farms = Farm.create([
	{origin: 'Mauna Loa', location: 'Hawaii, US', phone: '123-456-789'},
	{origin: 'Veracruz', location: 'Mexico', phone: '123-456-789'},
	{origin: 'Grand Lares', location: 'Puerto Rico', phone: '123-456-789'},
	{origin: 'Antigua', location: 'Guatemala', phone: '123-456-789'},
	{origin: 'Fincas', location: 'Costa Rica', phone: '123-456-789'},
	{origin: 'Sidamo', location: 'Ethiopia', phone: '123-456-789'},
	{origin: 'Tonkin', location: 'Vietnam', phone: '123-456-789'}
])

kopis = Kopi.create([
	{name: 'Kona', roast_id: 1, farm_id: 1, price_per_pound: 10.22},
	{name: 'Altura', roast_id: 2, farm_id: 2, price_per_pound: 10.46},
	{name: 'Arabica', roast_id: 3, farm_id: 3, price_per_pound: 15.55},
	{name: 'Antigua coffee', roast_id: 1, farm_id: 2, price_per_pound: 13.5},
	{name: 'Arabica', roast_id: 2, farm_id: 3, price_per_pound: 9.846},
	{name: 'Sidamo', roast_id: 3, farm_id: 4, price_per_pound: 15.015},
	{name: 'Robusta', roast_id: 3, farm_id: 7, price_per_pound: 16.255}
])

orders = Order.create([
	{weight: 100, kopi_id: 1},
	{weight: 200, kopi_id: 2},
	{weight: 150, kopi_id: 3},
	{weight: 50, kopi_id: 4},
	{weight: 70, kopi_id: 5},
	{weight: 99.9, kopi_id: 6},
	{weight: 125, kopi_id: 7}
])

10.times do 
	Order.create(
		weight: Faker::Number.between(50,200),
		kopi_id: Faker::Number.between(1, 7)
	)
end

b = def gen_unique_num(num)
  other_num = Faker::Number.between(1, 7)
  if other_num == num
    gen_unique_num(num)
  end
  other_num
end

10.times do 
	arr = (1..7).to_a
	arr2 = []
	rand(1..7).times {arr2.push(arr.shuffle!.pop)}
	print arr2,"\n"
	Customer.create(
		name: Faker::Company.unique.name,
		kopi_ids: arr2
	)
end
