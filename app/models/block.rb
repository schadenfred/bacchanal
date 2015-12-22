class Block < Vineyard

  belongs_to :parent_vineyard, class_name: "Orchard", foreign_key: :parent_id
end
