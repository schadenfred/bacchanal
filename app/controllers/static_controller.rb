class StaticController < ApplicationController
  skip_before_action :authenticate_for_beta, only: :home
  
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
  end

  def sample
  end
end
