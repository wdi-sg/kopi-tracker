# frozen_string_literal: true

puts '========== Seeding Origins'
Origin.all.destroy_all
Kopi.all.destroy_all
50.times do
  o = Origin.create(location: Faker::Address.city, phone: Faker::PhoneNumber.cell_phone)
  puts '========== Seeding Kopis'
  7.times do
    o.kopis.create(name: Faker::Name.name, roast: Faker::Cannabis.strain)
  end
  puts '========== Finished seeding Kopis'
end

puts '========== Finished seeding Origins'
