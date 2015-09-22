20.times do 
  address = Address.create(
		line_1: Faker::Address.street_address,
		line_2: Faker::Address.street_suffix,
		city: Faker::Address.city,
		state: Faker::Address.state_abbr,
		country: Faker::Address.country,
    phone: Faker::PhoneNumber.phone_number,
		website: Faker::Internet.url,
    email: Faker::Internet.email
	)
end
