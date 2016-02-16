after :users, :blocks, :orgs, :wineries, :vineyards, :addresses do

  addresses = Address.all
  users = User.first(10)
  orgs = Org.all

  [users, orgs].each do |addressables|
    addressables.each do |addressable|
      addressable.addresses_addressables.create!(
        address_id: addresses.sample.id,
        name: "home",
        address_function: "shipping"
      )
    end
  end

  user = users.first
  address_names = %w[home work vacation]
  address_functions = %w[shipping billing primary default]

  address_functions.each do |address_function|
    user.addresses_addressables.create!(
      address: addresses.sample,
      name: address_names.sample,
      address_function: address_function
    )
  end
end
