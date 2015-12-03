class Winery < Producer

  include Targetable
  include AppellableConcern

  store_accessor :bottled_on, :released_on 

  has_many :wines
end
