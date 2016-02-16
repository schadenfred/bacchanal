class Vineyard < Orchard

  include AppellableConcern

  belongs_to :parent_vineyard, class_name: "Vineyard", foreign_key: :parent_id

  has_many :wine_grape_lots, class_name: "Lot", foreign_key: :farm_id, dependent: :destroy
  has_many :wines, through: :wine_grape_lots
  has_many :wines, through: :wine_grape_lots
  has_many :blocks, class_name: "Vineyard", foreign_key: :parent_id


  store_accessor :properties, :varietal
end
