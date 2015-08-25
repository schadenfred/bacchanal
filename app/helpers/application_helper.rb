module ApplicationHelper

  def poly_article_path(article)
    polymorphic_path([article.org, article])
  end
end
