after :users do 
  addresses = Address.all


  vineyard = Vineyard.create!(
    name: "Ferrington Vineyard",
    blog_title: "I miss Sam",
    mission: "To provide the highest quality pinot noir winegrapes in the world",
    history: "At first, there were the dinosaurs."
  )
end

