class ApplicationController < ActionController::Base
  helper Cartify::Engine.helpers
  include Cartify::CurrentSession
  
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
