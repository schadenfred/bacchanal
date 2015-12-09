class Wine < Product

  include Targetable

  store_accessor :properties, :vintage, :bottled_on, :released_on, :varietal

  belongs_to :winery, foreign_key: :producer_id

  has_many :wine_grape_lots, foreign_key: :product_id
  has_many :vineyards, through: :wine_grape_lots

  def appellations
    winery.appellations
  end
end
