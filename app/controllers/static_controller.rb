class StaticController < ApplicationController

  skip_before_action :authenticate_for_beta
  skip_before_action :authenticate_user!

  def about
  end

  def terms
  end

  def privacy
  end

  def help
  end

  def contact
  end

  def home
    @appellations = Appellation.all
    @wineries = Winery.last(6)
    @company = Org.find_by(name: "Bacchan.al")
    @org = @company
  end

  def sample
  end
end
