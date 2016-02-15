class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
layout :get_layout


def after_sign_in_path_for(resource_or_scope)
  if resource_or_scope.is_a?(Admin)
    admin_dashboards_path
  end
end


def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
  helper_method :current_user





  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit!}
  end


def get_layout
  if devise_controller? && (resource_name == :admin || resource_name == :user)
    "login"
  elsif self.class.parent == Admin
    "admin"
  else
    "application"
  end
end

end


