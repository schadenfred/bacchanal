class Wine < Product
  include Targetable

  extend FriendlyId

  belongs_to :winery, class_name: "Producer" #foreign_key: :producer_id

  store_accessor :properties, :vintage, :bottled_on, :released_on
end
