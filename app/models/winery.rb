class Winery < Producer

  include Targetable
  include AppellableConcern

  store_accessor :bottled_on, :released_on 

  has_many :wines, foreign_key: :producer_id

  validates :name, presence: true
  validates :name, presence: true

  def vintages 
    vintages = []
    wines.each do |wine|
      vintages << wine.vintage
    end 
    vintages.uniq
  end

  def wines_in_vintage(vintage)
    wines.where("properties @> hstore(:key, :value)", key: "vintage", value: "#{vintage}")


    # wines.where(
    #   "properties -> :key LIKE :value", key: "vintage", value: "#{vintage}")

  end
end

