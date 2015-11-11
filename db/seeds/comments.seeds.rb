after :articles, :users, :wineries do 

  winery = Winery.find_byArticle.first
  users = User.all

  users.each do |user|
    
    article.comments.new(
      content: Faker::Stoked.sentences(2),
      commenter_id: user.id)
    article.save!

  end   
end

# replier = User.first
# second_replier = User.second

# first_level_comments = article.comments.last(3)
# first_level_comments.each do |parent|
#   article.comments.new(
#     content: Faker::Stoked.sentences(2),
#     commenter_id: replier.id,
#     parent_id: parent.id)
#   article.save!
# end

# second_level_comments = article.comments.last(3)
# second_level_comments.each do |parent|
#   article.comments.new(
#     content: Faker::Stoked.sentences(2),
#     commenter_id: second_replier.id,
#     parent_id: parent.id)
#   article.save!
# end