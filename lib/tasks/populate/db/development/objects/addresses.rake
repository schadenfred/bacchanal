# namespace 'db:development:create' do 

#   task addresses: :environment do

#     addressable_models = %w[winery producer  user]
#     # satisfy_dependencies(addressable_models)

#   	addressable_models.each do |model|
#       model.classify.constantize.all.each do |object|

#         address = object.addresses.create(
#     			line_1: Faker::Address.street_address,
#     			line_2: Faker::Address.street_suffix,
#     			city: Faker::Address.city,
#     			state: Faker::Address.state_abbr,
#           zip: Faker::Address.zip_code,
#     			country: Faker::Address.country,
#     			public_phone: Faker::PhoneNumber.phone_number,
#           public_email: Faker::Internet.email
#     		)
#       end
#     end
#   end
# end
