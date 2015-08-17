class Winery < Producer

  store_accessor :properties, :vintage, :released_on

  has_many :wines
end
