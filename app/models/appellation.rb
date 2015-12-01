class Appellation < ActiveRecord::Base

  has_many :addresses, through: :addresses_appellable
  has_many :addressable, through: :addresses
end
