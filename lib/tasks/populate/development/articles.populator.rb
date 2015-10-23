users = User.all
winery = Winery.first

users.each do |user|
  article = user.articles.new(
    title: Faker::Stoked.food + ": " + Faker::Stoked.food,
    content: Faker::Stoked.paragraphs(3),
    org: winery
  )
  article.save!
  article.publish!
  winery.tag(article, with: Faker::Bloocher.varietals.sample(4).flatten.join(","), on: :categories)      
  winery.tag(article, with: Faker::Stoked.things.sample(4).flatten.join(","), on: :tags) 
end
