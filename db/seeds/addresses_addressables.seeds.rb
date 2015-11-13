after :users, :orgs, :wineries, :addresses do 

  addresses = Address.all
  users = User.first(10)
  orgs = Org.first(6)

  [users, orgs].each do |addressables|
    addressables.each do |addressable|
      addressable.addresses_addressables.create(
        address_id: addresses.sample.id,
        name: "home",
        address_function: "shipping"
      )

      addressable.addresses_addressables.create(
        address_id: addresses.sample.id,
        name: "work",
        address_function: "billing"
      )
    end
  end
end
# orgs = Org.all
# users = User.all
# address_ids = Address.all.pluck(:id)

# orgs.each do |org| 
#   AddressesAddressable.create!(address_id: address_ids.sample)
# end

# users.each do |user|
#   AddressesAddressable.create!(address_id: address_ids.sample)
# end
