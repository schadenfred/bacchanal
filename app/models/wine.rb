class Wine < Producer
  include Targetable

  belongs_to :winery
end
