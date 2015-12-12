after :users do 
  addresses = Address.all


  vineyard = Vineyard.create!(
    name: "Ferrington",
    blog_title: "I miss Sam",
    mission: "To provide the highest quality pinot noir winegrapes in the world",
    history: "At first, there were the dinosaurs."
  )

  block_names = ["East", "2", "West"]
  block_names.each do |block_name|

    block = Vineyard.new(
      name: block_name,
      parent_id: vineyard.id,
      varietal: Faker::Bloocher.varietal
    )
    block.save!

    block.addresses_addressables.create(address: addresses.sample)
  end
end

