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
    @company = Org.where(name: "Bacchan.al").first
  end

  def sample
  end
end
