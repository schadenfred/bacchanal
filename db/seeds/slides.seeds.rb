after :galleries, :photos do 

  galleries = Gallery.all

  photos = Photo.all

  galleries.each do |gallery|

    3.times do 
      slide = gallery.slides.new(
        photo_id: photos.sample.id,
        call_to_action: Faker::Stoked.sport,
        bullet_big: Faker::Stoked.interest,
        bullet_small: Faker::Stoked.place
      )
      slide.save!
    end
  end
end