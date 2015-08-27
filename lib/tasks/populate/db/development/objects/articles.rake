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
      article.tag_list = Faker::Stoked.interests.sample(4)
      article.category_list = Faker::Stoked.things.sample(4)
      article.save
    end
  end
end