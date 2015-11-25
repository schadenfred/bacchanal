class Product < ActiveRecord::Base
  include Targetable

  belongs_to :producer

  has_many :photos, as: :photographable
  has_many :galleries, as: :galleriable



  store_accessor :properties, :price

end
