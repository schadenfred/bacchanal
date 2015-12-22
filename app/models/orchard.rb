class Orchard < Farm

  has_many :blocks, foreign_key: :parent_id
end
