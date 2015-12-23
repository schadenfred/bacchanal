after :wineries, :users do 

  winery = Winery.find_by(slug: "fathers-daughters-cellars")
  photographer = User.find_by(name: "guy pacurar") 

  10.times do |i|
      
    wine = winery.wines.new(
      name: Faker::Bloocher.vineyard + " " + Faker::Bloocher.varietal,
      price: rand(20..100), 
      vintage: rand(2009..2015),
      description: Faker::Stoked.paragraphs(2)
    )
    wine.save!


  end

  9.times do |i|
    wine = Wine.first
    winery.wines.create!(
      name: wine.name, 
      price: rand(20..100), 
      vintage: (wine.vintage.to_i - (+i)),
      description: Faker::Stoked.paragraph)

    wine.attachments.create!(
      attachment: File.new(Dir[File.expand_path('test/samples/attachments/*')].sample),
      summary: Faker::Stoked.sentence,
      name: "tech sheet"
    )
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

