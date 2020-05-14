# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 25.times do
#       KopiFarm.create([{
#             location: Faker::Coffee.origin,
#             phone_num: Faker::PhoneNumber.cell_phone
#       }])
# end


40.times do
      Kopi.create([{
            name: Faker::Coffee.blend_name,
            roast: Roast.find(rand(1..7)),
            kopi_farm: KopiFarm.find(rand(1..25)),
            user: User.first
      }])
end

10.times do
      Customer.create([{
            name: Faker::Name.name
      }])
end


# For each customer, add 3 - 7 random kopis.
Customer.all.each do |c|
      rand(3..7).times do
            this_kopi = Kopi.find(rand(1..Kopi.count))
            c.kopis << this_kopi
            p "added #{this_kopi.id} || #{this_kopi.name} to #{c.id} || #{c.name}"
      end
end


# INSERT INTO roasts(name) VALUES('Cinnamon'), ('Light'), ('City/Medium'), ('Full City'), ('Dark'), ('French'), ('Italian');