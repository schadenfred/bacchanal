class Event < ApplicationRecord
  belongs_to :competition

  has_many :addresses
end
