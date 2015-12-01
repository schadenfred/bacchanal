class AddressesAppellable < ActiveRecord::Base

  belongs_to :address
  belongs_to :appellation

  validates :address, :appellation, presence: true
end
