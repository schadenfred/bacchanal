class Winery < Producer

  include Targetable

  store_accessor :released_on

  has_many :appellations
  has_many :wines, class_name: "Product", foreign_key: :producer_id
end
