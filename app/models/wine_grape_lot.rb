class WineGrapeLot < Lot

  belongs_to :vineyard, foreign_key: :farm_id
  belongs_to :wine, foreign_key: :product_id

  
end
