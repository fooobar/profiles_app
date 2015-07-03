class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def user_login? 
    !current_user.nil?
  end


  # Allows us to check for a logged in user
  def authorize
    redirect_to '/login' unless current_user
  end


end
