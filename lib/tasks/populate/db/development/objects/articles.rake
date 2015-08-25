namespace 'db:development:create' do 

  task articles: :environment do 

    satisfy_dependencies(["wineries"])
    Winery.last(5).each do |winery|
      winery.articles.new(
        title: Faker::Stoked.food,
        content: Faker::Stoked.sentences(3)
      )
      winery.save
    end
  end
end