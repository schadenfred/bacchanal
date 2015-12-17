class DashboardController < ApplicationController
  
  before_action :set_org

  def show
    @user = current_user
  end

  private 

  def set_org
    @org = Org.find_by(name: "Bacchan.al")
  end
end
