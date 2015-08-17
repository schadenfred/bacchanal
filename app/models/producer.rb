class Producer < ActiveRecord::Base
  has_many :products

  scope :wineries, -> { where(type: 'Winery') } 
  # scope :meerkats, -> { where(race: 'Meerkat') } 
  # scope :wild_boars, -> { where(race: 'WildBoar') }
end
