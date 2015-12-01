class Address < ActiveRecord::Base

  has_many :addresses_addressables
  has_many :addressables, through: :addresses_addressables, source_type: "Org"

  geocoded_by :full_street_address

  after_validation :geocode

  def full_street_address

    [[line_1, line_2].join(" "), city, state, country].compact.join(', ')
  end
end
