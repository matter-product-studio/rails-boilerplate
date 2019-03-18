class ApplicationController < ActionController::Base
  #Enable this to allow name to be in a permissable parameter for editing and signup through Devise
  #before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
