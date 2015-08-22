class Winery < Producer

  include Targetable

  store_accessor :properties, :vintage, :released_on

  has_many :wines
end
