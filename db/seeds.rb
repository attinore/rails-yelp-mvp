puts 'Creating restaurants....'
10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: Restaurant::CATEGORY.sample,
  )
end
puts "Created #{Restaurant.count} restaurants"
