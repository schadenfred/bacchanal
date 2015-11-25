after :users do 
  winery = Winery.create!(
  name: "Fathers & Daughters Cellars",
  blog_title: "Not sons and mothers",
  mission: "Hand-crafted small batch wines from Ferrington Vineyard in the Anderson Valley, California.",
  history: "There are five of us. I’m one of the dads and I have two daughters, Taylor and Ella. My wife, Sarah, is the daughter of our little group’s patriarch, Kurt Schoeneman. Kurt is the owner of the Anderson Valley’s storied Ferrington Vineyard, the source of our fruit. Together, we make up Fathers & Daughters Cellars.

  It is our hope that through our wine, we can share with you some of the magic of this very special vineyard."
)


  winery_names = Faker::Bloocher.wineries[0..4]
  winery_names.each do |name|

    winery = Winery.new(
      name: name,
      blog_title: Faker::Stoked.saying,
      mission: Faker::Stoked.sentence,
      welcome_statement: Faker::Stoked.paragraphs(3)
    )
    winery.save!

  end
end