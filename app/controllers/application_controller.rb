class ApplicationController < ActionController::Base

  # only allow testing by beta users, remove when ready for production
  # before_action :authenticate_for_beta
  before_action :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Pundit

  def after_sign_in_path_for(resource)
    case current_user.roles.first.name
    when "user"
      root_path

    when "owner"
      root_path
    when "admin"
      root_path
    end
  end

  private

    def authenticate_for_beta
      if Rails.env.production?
        http_basic_authenticate_with name: "bacchus", password: "godofwhine"
      end
    end
end
