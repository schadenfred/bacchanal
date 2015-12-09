after :wines, :vineyards do
  wines = Wine.all
  vineyards = Vineyard.all

  wines.each do |wine|
    wine.wine_grape_lots.create(
      vineyard: vineyards.sample 
    )

  end
end