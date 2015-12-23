class Address < ActiveRecord::Base

  has_many :addresses_addressables, dependent: :destroy
  has_many :addressables, through: :addresses_addressables
  has_many :addresses_appellables
  has_many :appellations, through: :addresses_appellables
  has_many :orgs, through: :addresses_addressables
  has_many :users, through: :addresses_addressables

  accepts_nested_attributes_for :addresses_addressables
  # geocoded_by :full_street_address

  # after_validation :geocode

  def full_street_address

    [[line_1, line_2].join(" "), city, state, country].compact.join(', ')
  end
end
