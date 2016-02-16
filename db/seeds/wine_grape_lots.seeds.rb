after :wines, :vineyards do
  wines = Wine.all
  vineyards = Vineyard.where().not(parent_id: nil)

  wines.each do |wine|

    pct = 100 - rand(3..97)
    wine.wine_grape_lots.create(
      [
        {
          vineyard: vineyards.sample,
          percentage: pct
        }, {
          vineyard: vineyards.sample,
          percentage: (100 - pct)
        }
      ]
    )
  end
end