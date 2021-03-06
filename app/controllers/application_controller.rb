class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  # helper_method :current_user

  # def current_user
  #   @current_user ||= session[:current_user_id] && User.find_by_id(session[:current_user_id])
  # end


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :city, :state, :country, :business_name, :password, :is_vineyard) }
  end


end