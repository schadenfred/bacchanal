class Producer < Org
  has_many :products

  scope :wineries, -> { where( type: 'Winery' ) } 
end
