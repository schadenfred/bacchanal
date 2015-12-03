class Producer < Org

  has_many :products, as: :produceable

end
