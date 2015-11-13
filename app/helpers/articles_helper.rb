module ArticlesHelper
  def commentable_path(comment)
    polymorphic_url([comment.commentable.org, comment.commentable], anchor: "comment-#{comment.id}")
  end
end
