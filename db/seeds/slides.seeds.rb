after :galleries, :users do 

  files = Dir[File.expand_path('test/samples/wineries/*.jpg')]
  photographer = User.all.sample
  wineries = Winery.first(6)

  wineries.each do |winery|
    
    photo = winery.default_gallery.photos.new(
      image: File.new(files.sample),
      caption: Faker::Stoked.thing,
      name: Faker::Stoked.thing,
      photographer_id: photographer.id,
      slides_attributes: [ {
        gallery_id: winery.id,
        call_to_action: Faker::Stoked.thing,
        bullet_big: "bullet big",
        bullet_small: "bullet small"
      } ]
    )
    photo.save!
  end
end