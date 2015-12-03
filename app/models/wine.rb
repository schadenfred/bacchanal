class Wine < Product

  include Targetable

  extend FriendlyId

  store_accessor :properties, :vintage, :bottled_on, :released_on

  belongs_to :winery, foreign_key: :producer_id

  def appellations
    
    winery.appellations
  end
end
