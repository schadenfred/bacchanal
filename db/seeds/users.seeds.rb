testers = [
  "alisa mathewson",
  "biren talati",
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
  user.confirm
end

20.times do
  user = User.create!( 
    name: Faker::Stoked.celebroty,
    email: Faker::Internet.email,
    password: "password",
    bio: Faker::Stoked.paragraphs(3)
  )
  user.confirm
end


