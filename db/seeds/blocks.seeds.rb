after :vineyards do

  vineyard = Vineyard.find_by(name: "Ferrington Vineyard")

  block_names = ["East", "2", "West"]
  block_names.each do |block_name|

    block = vineyard.blocks.new(
      name: block_name,
      varietal: Faker::Bloocher.varietal
    )
    block.save!
  end
end