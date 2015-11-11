after :wineries, :photos do 

  winery = Winery.find_by(slug: "fathers-daughters-cellars")

  gallery = winery.galleries.new(
    name: "default",
    properties: {
      order: []
    }
  )
  byebug



end