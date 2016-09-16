class AddressesAppellable < ApplicationRecord

  belongs_to :address
  belongs_to :appellation

  validates :address, :appellation, presence: true
end
