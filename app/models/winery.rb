class Winery < Producer

  store_accessor :properties

  has_many :wines
  
end
