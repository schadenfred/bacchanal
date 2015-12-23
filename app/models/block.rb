class Block < Vineyard

  belongs_to :parent_vineyard, class_name: "Orchard", foreign_key: :parent_id

  def full_name
    [self.parent_vineyard.name, "block", self.name].join(" ")
  end
end
