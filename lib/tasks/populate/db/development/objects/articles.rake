namespace 'db:development:create' do 

  task articles: :environment do 

    satisfy_dependencies(["wineries", "users"])
    user_ids = User.first(5).map(&:id)
    winery = Winery.first
    5.times do 
      article = winery.articles.new(
        title: Faker::Stoked.food,
        content: Faker::Stoked.sentences(3),
        author_id: user_ids.sample
      )
      article.save!
      article.tag_list = "pinot noir, clowns, existentialism"
      article.category_list = "winemaking, vineyards"
      article.save
    end
  end
end