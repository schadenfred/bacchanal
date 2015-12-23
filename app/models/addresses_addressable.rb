class AddressesAddressable < ActiveRecord::Base

  enum address_function: [ :shipping, :billing, :primary, :default ]
  
  belongs_to :address
  belongs_to :addressable, polymorphic: true

  validates :addressable, presence: true
  validates :address, presence: true
end
