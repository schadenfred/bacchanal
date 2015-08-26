module ApplicationHelper

  def poly_path(article)
    polymorphic_path([article.org, article])
  end
end
