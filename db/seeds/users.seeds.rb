

20.times do
  user = User.create!( 
    name: Faker::Stoked.celebroty,
    email: Faker::Internet.email,
    password: "password",
    bio: Faker::Stoked.paragraphs(3)
  )
  user.invite!
  user.accept_invitation!
  user.confirm
end
