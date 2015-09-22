class AddressesAddressable < ActiveRecord::Base

  enum address_function: [ :shipping, :billing, :primary ]
  
  belongs_to :address
  belongs_to :addressable, polymorphic: true
  belongs_to :org
  belongs_to :user

end
