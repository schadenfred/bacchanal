after :users, :wineries do 

  user = User.find_by(name: "guy pacurar")
  wineries = Winery.first(6)

  files = Dir[File.expand_path('test/samples/wineries/*.jpg')]

  wineries.each do |winery|
    3.times do 
      @photo = winery.photos.new(
        image: File.new(files.sample),
        caption: Faker::Stoked.thing,
        name: Faker::Stoked.thing,
        photographer_id: user.id

      )
      @photo.save!
    end
  end

  winery = Winery.find_by(slug: "fathers-daughters-cellars")

  user = User.find_by(name: "guy pacurar")

  gallery = winery.default_gallery

  pics = Dir[File.expand_path('test/samples/fanddcellars/landscape/*.jpg')]

  pics.each do |pic|

    photo = Photo.new(
      photographer_id: user.id,
      image: File.new(pic),
      caption: Faker::Stoked.thing,
      name: Faker::Stoked.thing,
      slides_attributes: [ {
          gallery_id: gallery.id,
          call_to_action: Faker::Stoked.thing,
          bullet_big: "bullet big",
          bullet_small: "bullet small"
      } ]
    )
    photo.save!
  end

    
  users = { "fred schoeneman" => "fred.jpg"}
  users.each do |avatar|
    
    user = User.find_by(name: avatar.first)
    user.create_avatar(
      image: File.new( Rails.root.join("test", "samples", "bacchanal", "team", avatar.second) ),
      caption: Faker::Stoked.thing,
      photographer_id: user.id,
      name: Faker::Stoked.thing

    )
    user.save!
  end
end
