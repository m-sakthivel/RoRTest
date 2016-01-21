class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
before_action :configure_permitted_parameters, if: :devise_controller?
  
  rescue_from CanCan::AccessDenied do |exception|
  
  flash[:error] = "Access denied."
  redirect_to root_url
end
  def after_sign_in_path_for(resource)
  session[:previous_url] || root_path
end

def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :role
    
  end
 
end
