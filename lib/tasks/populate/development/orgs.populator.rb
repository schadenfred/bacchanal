bacchanal = Org.create!(
  name: "Bacchan.al",
  blog_title: "Odds, Ends",
  mission: "Bacchan.al helps small farmers and food producers tell their authentic stories.")

winery = Winery.create!(
  name: "Fathers & Daughters Cellars",
  blog_title: nil,
  mission: "Hand-crafted small batch wines from Ferrington Vineyard in the Anderson Valley, California.", 
  welcome_statement: "There are five of us. I’m one of the dads and I have two daughters, Taylor and Ella. My wife, Sarah, is the daughter of our little group’s patriarch, Kurt Schoeneman. Kurt is the owner of the Anderson Valley’s storied Ferrington Vineyard, the source of our fruit. Together, we make up Fathers & Daughters Cellars.

    It is our hope that through our wine, we can share with you some of the magic of this very special vineyard."
    )

winery.addresses.create(
  line_1: "PO Box 29",
  line_2: nil,
  city: "Philo",
  state: "CA",
  country: "US",
  phone: "707-813-1137",
  website: "http://fanddcellars.com/",
  email: "pacurar.guy@gmail.com"
)
