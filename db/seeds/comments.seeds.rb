after :articles, :users, :wineries do

  winery = Winery.first
  article = winery.articles.first
  commenters = User.first(10)

  commenters.each do |commenter|

    article.comments.create!(
      content: Faker::Stoked.sentences(2),
      commenter_id: commenter.id)
  end

  parent_comment = Comment.first
  replier = User.find(11)
  reply = Comment.create!(
    commenter: replier,
    parent_id: parent_comment.id,
    content: Faker::Stoked.sentence
  )

  reply_to_reply = Comment.create!(
    commenter: User.find(1),
    parent_id: reply.id,
    content: Faker::Stoked.paragraph
  )
end
