class Winery < Producer

  include Targetable
  include AppellableConcern

  store_accessor :bottled_on, :released_on
  
  has_many :wines, foreign_key: :producer_id
  has_many :vineyards, through: :wines
  has_many :wines_appellations, through: :vineyards, source: :appellations
  has_many :reviews
  validates :name, presence: true

  def vintages 
    wines.map{ |x| x.properties["vintage"]}.uniq
  end
  
  def wines_in_vintage(vintage)
    wines.where("properties @> hstore(:key, :value)", key: "vintage", value: "#{vintage}")
  end

  def varietals
    vineyards.map{ |x| x.varietal}.uniq.compact
  end
end

