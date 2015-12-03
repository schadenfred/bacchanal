class Product < ActiveRecord::Base
  
  include Targetable
  include GalleriableConcern

  belongs_to :produceable, polymorphic: true

  store_accessor :properties, :price

end
