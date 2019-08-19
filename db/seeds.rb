


4.times do
  User.create(email: Faker::Internet.email, username: Faker::Name.first_name, password: 'password')
end

2.times do
  User.create(email: Faker::Internet.email, username: Faker::Name.first_name, password: 'password', admin: true)
end

4.times do
  Customer.create(email: Faker::Internet.email, username: Faker::Name.first_name, password: 'password')
end

roast_1 = Roast.create(name: 'Cinnamon')
roast_2 = Roast.create(name: 'Light')
roast_3 = Roast.create(name: 'City/Medium')
roast_4 = Roast.create(name: 'Full City')
roast_5 = Roast.create(name: 'Dark')
roast_6 = Roast.create(name: 'French')
roast_7 = Roast.create(name: 'Italian')

5.times do
  Origin.create(location: Faker::Coffee.origin, phone: Faker::PhoneNumber.phone_number_with_country_code)
end

20.times do
Kopi.create(name: Faker::Coffee.blend_name, user_id: rand(1..5), roast_id: rand(1..7), origin_id: rand(1..5), price_per_pound: rand(3.00..10.00))
end

30.times do
Order.create(weight: rand(1.00..20.00), user_id: rand(1..5), kopi_id: rand(1..20))
end