class Lot < ActiveRecord::Base

  belongs_to :farm
  belongs_to :product
 
  validates :farm_id, presence: true
  validates :product_id, presence: true
  
  validates :farm_id, uniqueness: { scope: :product_id }
end
