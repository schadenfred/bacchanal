class Winery < Producer

  include Targetable

  store_accessor :properties, :history, :mission, :released_on

  has_many :wines
end
