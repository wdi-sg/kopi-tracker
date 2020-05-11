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

50.times do
      Kopi.create([{
            name: Faker::Coffee.blend_name,
            roastedness: rand(1..7),
            # Two periods is a range including second number.
            # Three periods (...) is a range exluding second number.
            origin_id: rand(1..25)
      }])
end