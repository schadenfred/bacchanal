class InvitationsController < Devise::InvitationsController

  before_filter :update_sanitized_params, only: :create

  def create
    super
  end

  def after_invite_path_for(resource)
    dashboard_path
  end

  protected

  def update_sanitized_params
    devise_parameter_sanitizer.for(:invite).concat [:name]
  end
  # def configure_permitted_parameters
  #   byebug
  #   devise_parameter_sanitizer.for(:invite).concat :name
  # end
end