class Vineyard < Orchard

  include AppellableConcern

  has_many :wine_grape_lots, foreign_key: :farm_id
  has_many :wines, through: :wine_grape_lots
end
