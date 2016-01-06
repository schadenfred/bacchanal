class ApplicationController < ActionController::Base
  
  # only allow testing by beta users, remove when ready for production
  before_action :authenticate_for_beta
  before_action :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception


  include Pundit

  private

    def authenticate_for_beta
      if Rails.env.production?
        http_basic_authenticate_with name: "bacchus", password: "godofwhine"
      end
    end
end
