module CommentsHelper

  def nested_comments(comments)
    comments.map do |comment, sub_comments|
      content_tag(:div, render(comment), :class => "media")
    end.join.html_safe
  end

  def comment_call_to_action(comment)
    base_call = "add your .02"
    if comment.parent
      base_call + " to what #{comment.parent.commenter.name} wrote above"
    elsif @commentable.comments.nil?
      "Be the first to #{base_call}"
    else
      base_call
    end
  end
end
