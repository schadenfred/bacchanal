after :wineries, :orgs, :users do 

  bacchanal = Org.find_by(name: "Bacchan.al")
  gallery = bacchanal.galleries.create(
    name: "default"
  )
  gallery.save
  user = User.find_by(name: "guy pacurar")

  typewriter_pics = Dir[File.expand_path('test/samples/bacchanal/*.jpg')]

  typewriter_pics.each do |pic|

    photo = gallery.photos.new(
      photographer_id: user.id,
      image: File.new(pic),
      caption: Faker::Stoked.thing,
      name: Faker::Stoked.thing,
      slides_attributes: [
        {
          gallery_id: gallery.id,
          call_to_action: Faker::Stoked.thing,
          bullet_big: "bullet big",
          bullet_small: "bullet small"
        }
      ]
    )
    photo.save!
  end

  orgs = Org.all
  orgs.each do |org|

    next if org.default_gallery && org.default_gallery.name == "default"
    gallery = org.galleries.new(
      name: "default",
      properties: {
        order: []
      }
    )
    gallery.save!
  end
end