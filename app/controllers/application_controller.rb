class ApplicationController < ActionController::Base
  
  inherit_resources
  protect_from_forgery
  
  helper_method :current_user_session, :current_user
  before_filter :user_session


protected

  def user_session
    @user_session = UserSession.new
  end

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.user
  end

end