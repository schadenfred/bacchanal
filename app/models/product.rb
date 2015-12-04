class Product < ActiveRecord::Base
  
  include Targetable
  include GalleriableConcern

  belongs_to :producer
  store_accessor :properties, :price

end
