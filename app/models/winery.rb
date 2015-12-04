class Winery < Producer

  include Targetable
  include AppellableConcern

  store_accessor :bottled_on, :released_on 

  has_many :wines, foreign_key: :producer_id

  validates :name, presence: true
  validates :name, presence: true
end
