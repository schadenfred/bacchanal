class Winery < Producer

  include Targetable

  store_accessor :released_on

  has_many :wines
end
