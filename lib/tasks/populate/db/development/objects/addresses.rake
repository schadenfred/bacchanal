namespace 'db:development:create' do 

  task addresses: :environment do

    addressable_models = %w[winery]
    satisfy_dependencies(addressable_models)

  	addressable_models.each do |model|
      model.classify.constantize.all.each do |object|

        address = object.addresses.create(
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
    end
  end
end
