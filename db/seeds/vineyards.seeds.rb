after :users do 
  vineyard = Vineyard.create!(
    name: "Ferrington",
    blog_title: "I miss Sam",
    mission: "To provide the highest quality pinot noir winegrapes in the world",
    history: "At first, there were the dinosaurs."
  )

  block_names = ["East", "2", "West"]
  block_names.each do |block_name|

    block = Vineyard.new(
      name: name,
      parent_id: vineyard.id
    )
    block.save!
  end
end

