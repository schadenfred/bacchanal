class Vineyard < Orchard

  include AppellableConcern

  has_many :wine_grape_lots, foreign_key: :farm_id, dependent: :destroy
  has_many :wines, through: :wine_grape_lots

  store_accessor :properties, :varietal
end
