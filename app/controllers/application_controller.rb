class ApplicationController < ActionController::Base
  # TODO refactor so it isn't so ugly?
  
  if Rails.env.production?
    http_basic_authenticate_with name: "bacchus", password: "godofwhine"
  end 

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Pundit


  # devise helper for authentication
  # before_action :authenticate_user!
end
