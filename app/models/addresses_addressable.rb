class AddressesAddressable < ActiveRecord::Base

  enum address_function: [ :shipping, :billing, :primary ]
  
  belongs_to :address
  belongs_to :addressable, polymorphic: true
end