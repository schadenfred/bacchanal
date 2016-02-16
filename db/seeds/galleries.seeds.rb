after :wineries, :orgs, :users, :wines do

  wineries = Winery.all
  vineyards = Vineyard.all
  wines = Wine.all
  galleriables = wineries + vineyards + wines
  galleriables.each do |galleriable|

    if galleriable.galleries.empty?
      gallery = galleriable.galleries.create!(
        name: "default",
        properties: {
          order: []
        }
      )
    end
  end
end