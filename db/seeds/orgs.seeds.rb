after :users do 

  bacchanal = Org.create!(
  name: "Bacchan.al",
  blog_title: "Odds, Ends",
  mission: "Bacchan.al helps small farmers and food producers tell their authentic stories.",
  history: Faker::Stoked.paragraphs( 3 )
)

user = User.find_by(name: "fred schoeneman")


end

