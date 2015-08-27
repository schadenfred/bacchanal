namespace 'db:development:create' do 

  task articles: :environment do 

    satisfy_dependencies(["wineries", "users"])
    user_ids = User.first(5).map(&:id)
    winery = Winery.first
    5.times do 
      article = winery.articles.new(
        title: Faker::Stoked.food,
        content: Faker::Stoked.paragraphs(3),
        author_id: user_ids.sample
      )
      article.save!
      winery.tag(article, with: Faker::Stoked.interests.sample(4).flatten.join(","), on: :categories)      
      winery.tag(article, with: Faker::Stoked.things.sample(4).flatten.join(","), on: :tags) 
    end
  end
end