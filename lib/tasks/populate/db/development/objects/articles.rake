namespace 'db:development:create' do 

  task articles: :environment do 

    satisfy_dependencies(["wineries", "user"])
    user_ids = User.first(5).map(&:id)
    winery = Winery.last
    5.times do 
      article = winery.articles.new(
        title: Faker::Stoked.food,
        content: Faker::Stoked.paragraphs(3),
        author_id: user_ids.sample
      )
      article.save!
      winery.tag(article, with: Faker::Bloocher.varietals.sample(4).flatten.join(","), on: :categories)      
      winery.tag(article, with: Faker::Stoked.things.sample(4).flatten.join(","), on: :tags) 
    end
  end
end