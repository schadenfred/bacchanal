class Event < ActiveRecord::Base
  belongs_to :competition

  has_many :addresses
end