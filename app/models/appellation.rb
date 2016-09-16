class Appellation < ApplicationRecord

  has_many :addresses_appellables, dependent: :destroy
  has_many :addresses, through: :addresses_appellables, dependent: :destroy
  has_many :addresses_addressables, through: :addresses
  has_many :addressables, through: :addresses_addressables
  has_many :wineries, through: :addresses_addressables, source: :addressable, source_type: "Org"
  has_many :vineyards, through: :addresses_addressables, source: :addressable, source_type: "Org"
  has_many :wines, through: :vineyards


  def include_address(address)
    addresses_appellables.create(address_id: address.id)
  end

  def exclude_address(address)
    addresses.delete(address)
  end
end
