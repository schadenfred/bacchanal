class Product < ActiveRecord::Base
  include Targetable

  belongs_to :producer

  has_many :photos

  store_accessor :properties, :price

end
