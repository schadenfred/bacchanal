class Product < ActiveRecord::Base
  include Targetable

  belongs_to :producer

  store_accessor :properties, :price

end
