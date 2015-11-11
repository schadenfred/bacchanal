after :users, :wineries do 
  user = User.find_by(name: "guy pacurar")
  winery = Winery.find_by(slug: "fathers-daughters-cellars")

  5.times do 
    article = winery.articles.new(
      title: Faker::Stoked.food + ": " + Faker::Stoked.food,
      content: Faker::Stoked.paragraphs(3),
      author_id: user.id
    )
    article.save!
    article.publish!
    winery.tag(article, with: Faker::Bloocher.varietals.sample(4).flatten.join(","), on: :categories)      
    winery.tag(article, with: Faker::Stoked.things.sample(4).flatten.join(","), on: :tags) 
  end
end
