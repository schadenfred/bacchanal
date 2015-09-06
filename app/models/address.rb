class Address < ActiveRecord::Base

  has_many :addresses_addressables
  has_many :addressables, through: :addresses_addressables, source_type: "Org"
end
