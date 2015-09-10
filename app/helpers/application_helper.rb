module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Bacchan.al"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def poly_path(article)
    polymorphic_path([article.org, article])
  end

  def markdown(text)
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    markdown.render(text)
  end 


  def flavor_choices
    [
      "spicy" => { 
        "spicy" => [
          "licorice/anise" 
        ] 
      }
    ]
  end
end
