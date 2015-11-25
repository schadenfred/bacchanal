after :wineries, :users do 

  winery = Winery.find_by(slug: "fathers-daughters-cellars")
  photographer = User.find_by(name: "guy pacurar") 

  10.times do |i|
      
    wine = winery.wines.new(
      name: Faker::Bloocher.vineyard + " " + Faker::Bloocher.varietal,
      price: rand(20..100)
      )
    wine.save!

    gallery = wine.galleries.create(
      name: "default"
    )

    3.times do |n|

      wine.photos.new(
        photographer_id: photographer.id,
        name: "label",
        caption: Faker::Stoked.thing,
        image: Dir[File.expand_path('test/samples/fanddcellars/landscape/*.jpg')].sample,
        slides_attributes: [ {
          gallery_id: gallery.id
        }]
      )
      wine.save!
    end
  end
end

