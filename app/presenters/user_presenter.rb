class UserPresenter < BasePresenter

  def comments
    @model.comments
  end

  def positions
    @model.positions
  end

  def articles_written
    @model.articles
  end

  def name
    @model.name ? @model.name : @model.title
  end

end