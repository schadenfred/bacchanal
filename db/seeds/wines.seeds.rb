after :wineries, :users do 

  winery = Winery.find_by(slug: "fathers-daughters-cellars")
  photographer = User.find_by(name: "guy pacurar") 

  10.times do |i|
      
    wine = winery.wines.new(
      name: Faker::Bloocher.vineyard + " " + Faker::Bloocher.varietal,
      price: rand(20..100)
    )
    wine.save!

  end

  wines = winery.wines.all

  wines.each do |wine|

    gallery = wine.galleries.create(
      name: "default"
    )

    labels = Dir[File.expand_path('test/samples/labels/*.jpg')]
    photo = gallery.photos.new(
    
      photographer_id: photographer.id,
      name: Faker::Stoked.thing,
      caption: Faker::Stoked.thing,
      image: File.new(labels.sample),
      slides_attributes: [ {
        gallery_id: gallery.id
      }]
    )
    photo.save!
  end
end

