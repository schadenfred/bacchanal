class StaticController < ApplicationController

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
    @company = Org.find_or_create_by!(name: "Bacchan.al")
    @org = @company
  end

  def sample
  end
end
