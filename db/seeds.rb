# users

testers = [
  "alisa mathewson",
  "biren talati",
  "fred schoeneman",
  "greg spanel",
  "guy pacurar",
  "kimberly miller",
  "heather schoeneman",
  "kurt schoeneman",
  "melinda marks",
  "sarah schoeneman",
  "seemant kulleen"
]

testers.each do |fullname|
  first = fullname.split.first
  last = fullname.split.last
  last_initial = fullname.split.last.chars.first
  test_domain = "@bacchan.al"
  email = first + "." + last + test_domain

  user = User.create!( 
    name: fullname,
    email: email,
    password: "password",
    bio: Faker::Stoked.paragraphs(3)
  )
  user.invite!
  user.accept_invitation!
  user.confirm
end

# company

bacchanal = Org.create!(
  name: "Bacchan.al",
  blog_title: "Odds, Ends",
  mission: "Bacchan.al helps small farmers and food producers tell their authentic stories.",
  history: Faker::Stoked.paragraphs( 3 )
)

user = User.find_by(name: "fred schoeneman")

gallery = bacchanal.galleries.create(
  name: "default"
)
gallery.save

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

# Fathers and Daughters seed
winery = Winery.create!(
  name: "Fathers & Daughters Cellars",
  blog_title: "Not sons and mothers",
  mission: "Hand-crafted small batch wines from Ferrington Vineyard in the Anderson Valley, California.",
  history: "There are five of us. I’m one of the dads and I have two daughters, Taylor and Ella. My wife, Sarah, is the daughter of our little group’s patriarch, Kurt Schoeneman. Kurt is the owner of the Anderson Valley’s storied Ferrington Vineyard, the source of our fruit. Together, we make up Fathers & Daughters Cellars.

  It is our hope that through our wine, we can share with you some of the magic of this very special vineyard."
)

user = User.find_by(name: "guy pacurar")

gallery = winery.galleries.create!(
  name: "default"
)
gallery.save

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