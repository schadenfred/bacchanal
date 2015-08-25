namespace 'db:development:create' do 

  task comments: :environment do

    satisfy_dependencies(["article", "user"])

    articles = Article.last(5)
    user_ids = User.first(5).map(&:id)
    articles.each do |a|
      a.comments.new(
        content: Faker::Stoked.sentences(2),
        commenter_id: user_ids.sample 
      )
      a.save!
    end
  end
end
