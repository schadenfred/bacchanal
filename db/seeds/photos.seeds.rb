after :users, :wineries, :vineyards, :galleries, :wines, :positions do

  users = User.all
  fillers = Dir[File.expand_path('test/samples/avatars/*')]
  users.each do |user|

    user.create_avatar(
      image: File.new( fillers.sample ),
      caption: Faker::Stoked.thing,
      photographer_id: user.id,
      name: Faker::Stoked.thing )
  end

  orgs = Org.where.not(name: ["Bacchan.al"])
  files = Dir[File.expand_path('test/samples/landscapes/*.jpg')]

  orgs.each do |org|
    user = User.first

    3.times do
      @photo = org.default_gallery.photos.create!(
        image: File.new(files.sample),
        caption: Faker::Stoked.thing,
        name: Faker::Stoked.thing,
        photographer_id: user.id )
    end
  end
end
