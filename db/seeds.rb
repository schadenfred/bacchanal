bacchanal = Org.create!(
  name: "Bacchan.al",
  blog_title: "Odds, Ends",
  mission: "Bacchan.al helps small farmers and food producers tell their authentic stories.",
  history: Faker::Stoked.paragraphs( 3 ) )

gallery = bacchanal.galleries.create!(
  name: "default" )

user = User.create!( 
  name: "Fred Schoeneman",
  email: "fred@bacchan.al",
  password: "password",
  bio: Faker::Stoked.paragraphs(3)
)
user.invite!
user.accept_invitation!
user.confirm

position = bacchanal.positions.create(
  user: user,
  title: "Proprietor",
  description: "Builder. Skier. Writer. Wineslayer.",
  tenure_start: Date.today - 3.months
)

typewriter_pics = Dir[File.expand_path('test/samples/bacchanal/*.jpg')]

typewriter_pics.each do |pic|

  photo = gallery.photos.create(
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
end


