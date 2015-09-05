class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # devise helper for authentication
  # before_action :authenticate_user!
  before_action :http_basic_authenticate!

  private

    def http_basic_authenticate!
      http_basic_authenticate_with(
          name: "bacchus", password: "godofwhine"
      ) if Rails.env.production?
    end
end
