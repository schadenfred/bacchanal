after :users, :wineries do 

  user = User.find_by(name: "guy pacurar")
  wineries = Winery.first(6)

  files = Dir[File.expand_path('test/samples/wineries/*.jpg')]

  wineries.each do |winery|
    3.times do 
      @photo = user.photos.new(
        image: File.new(files.sample),
        caption: Faker::Stoked.thing,
        name: Faker::Stoked.thing

      )
      @photo.save!
    end
  end
end
  # wineries = Winery.first(6)

  # wineries.each do |winery|

  #   3.times do 

  #     photo = winery.default_gallery.photos.create(

  #       )      
  #     # photo slide = winery.default_gallery.slides.create(
  #     #   call_to_action: Faker::Stoked.sport,
  #     #   bullet_big: Faker::Stoked.interest,
  #     #   bullet_small: Faker::Stoked.place,
  #     #   photos_attributes
  #     # )
  #     # byebug
  #     # # slide.phophoto_id: photos.sample.id,
  #     # slide.save!
  #   end
  # end
# end
# image_path = Rails.root.join('test', 'samples', 'fanddcellars', 'sauv.jpg').to_s 

# uploader = Dragonfly[:images] 
# uploaded_image = uploader.fetch_file(image_path) 

# image = Image.create image: uploaded_image 

# if image.valid? 
#   puts "#{image.title} Created" 
# else 
#   puts "Error on create #{image.title}" 
# end
# files = Dir[File.expand_path('test/samples/*.rb')]

# image_path = Rails.root.join('test', 'samples', 'fanddcellars', 'sauv.jpg').to_s 

# uploader = Dragonfly[:images] 
# uploaded_image = uploader.fetch_file(image_path) 

# image = Image.create image: uploaded_image 

# if image.valid? 
#   puts "#{image.title} Created" 
# else 
#   puts "Error on create #{image.title}" 
# end