article = Article.first
users = User.all

users.each do |user|
  article.comments.new(
    content: Faker::Stoked.sentences(2),
    commenter_id: user.id)
  article.save!
end   
