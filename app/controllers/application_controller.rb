class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  
  # def configure_permitted_parameters
  #   added_attrs = [ :username, :email, :password, :password_confirmation　]
  #   devise_parameter_sanitizer.for :sign_up, keys: added_attrs
  #   devise_parameter_sanitizer.for :account_update, keys: added_attrs
  #   devise_parameter_sanitizer.for :sign_in,keys: added_attrs
  # end
  
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:account_update) << :username
  end
end
