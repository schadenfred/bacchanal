class Product < ActiveRecord::Base
  include Targetable

  belongs_to :producer

  has_many :photos, as: :photographable


  store_accessor :properties, :price

end
