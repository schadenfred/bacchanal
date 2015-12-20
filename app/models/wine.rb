class Wine < Product

  include Targetable

  store_accessor :properties, :vintage, :bottled_on, :released_on, :varietal

  belongs_to :winery, foreign_key: :producer_id

  has_many :appellations, through: :vineyards
  has_many :reviews, dependent: :destroy
  has_many :vineyards, through: :wine_grape_lots
  has_many :wine_grape_lots, foreign_key: :product_id, dependent: :destroy

  validates :winery, presence: true
  def varietals
    vineyards.map{ |x| x.properties["varietal"]}.uniq
  end

  def composition
    unknown = 100 - wine_grape_lots.pluck(:percentage).sum
    components = wine_grape_lots.map do |x| 
      { x.vineyard.varietal => x.percentage}
    end
    byebug
    composition = components.sort_by { |component| component.values }.reverse
    unless unknown == 0
      composition << {"unknown" => unknown }
    end
    composition.inject(:merge)
  end

  def previous_vintages
    winery.wines.where(name: name).where.not(id: self.id)
  end
end
