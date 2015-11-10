# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)

# bacchanal = Org.create!(
#   name: "Bacchan.al",
#   blog_title: "Odds, Ends",
#   mission: "Bacchan.al helps small farmers and food producers tell their authentic stories.")

# bacchanal.addresses.create(
#   line_1: "PO box 1014",
#   line_2: nil,
#   city: "Boonville",
#   state: "CA",
#   country: "US",
#   phone: "510.207.3450",
#   website: "bacchan.al",
#   email: "cerberus@bacchan.al"
# )

# winery = Winery.create!(
#   name: "Fathers & Daughters Cellars",
#   blog_title: nil,
#   mission: "Hand-crafted small batch wines from Ferrington Vineyard in the Anderson Valley, California.", 
#   welcome_statement: "There are five of us. I’m one of the dads and I have two daughters, Taylor and Ella. My wife, Sarah, is the daughter of our little group’s patriarch, Kurt Schoeneman. Kurt is the owner of the Anderson Valley’s storied Ferrington Vineyard, the source of our fruit. Together, we make up Fathers & Daughters Cellars.

#     It is our hope that through our wine, we can share with you some of the magic of this very special vineyard."
#     )

# winery.addresses.create(
#   line_1: "PO Box 29",
#   line_2: nil,
#   city: "Philo",
#   state: "CA",
#   country: "US",
#   phone: "707-813-1137",
#   website: "http://fanddcellars.com/",
#   email: "pacurar.guy@gmail.com"
# )
# winery.identities.create!(
#   provider: "facebook",
#   link: "https://www.facebook.com/fathersanddaughterscellars/"
# )



# bacchanal.positions.create!(
#   user_id: fred.id,
#   title: "Proprietor",
#   description: "soup to nuts")

# bacchanal.positions.create!(
#   user_id: alisa.id,
#   title: "Biology & ecology intern",
#   description: "vineyard mapping & data analysis")

# ["guy pacurar", "sarah schoeneman", "kurt schoeneman"].each do |name|
#   winery.positions.create!(
#     user_id: User.where(name: name).first.id,
#     title: "proprietor"
#   )
# end

# winery.wines.create!(
#   name: Faker::Bloocher.varietal

#   )