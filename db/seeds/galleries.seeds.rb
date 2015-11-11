after :wineries, :photos do 

  wineries = Winery.last(6)

  wineries.each do |winery|


    gallery = winery.galleries.new(
      name: "default",
      properties: {
        order: []
      }
    )
    gallery.save!
  end
end