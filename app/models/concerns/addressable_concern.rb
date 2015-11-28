module AddressableConcern

  extend ActiveSupport::Concern

  included do 
    has_many :addresses_addressables, as: :addressable
    has_many :addresses, through: :addresses_addressables, as: :addressable
  end

  def default_address
    addresses_addressables.first.address
  end

  def mailing_address
    addresses_addressables.first.address
  end

  def fax
    default_address.fax
  end

  def phone
    default_address.phone
  end
end
