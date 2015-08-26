namespace 'db:development:create' do 

  task articles: :environment do 

    satisfy_dependencies(["wineries", "users"])
    user_ids = User.first(5).map(&:id)
    Winery.last(5).each do |winery|
      winery.articles.new(
        title: Faker::Stoked.food,
        content: Faker::Stoked.sentences(3),
        author_id: user_ids.sample
      )
      winery.save
    end
  end
end