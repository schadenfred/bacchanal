class Winery < Producer

  include Targetable
  include AppellableConcern

  store_accessor :bottled_on, :released_on 

  has_many :wines, class_name: "Product", foreign_key: :org_id
end
