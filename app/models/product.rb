class Product < ActiveRecord::Base
  
  include Targetable
  include GalleriableConcern

  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :producer
  store_accessor :properties, :price

end
