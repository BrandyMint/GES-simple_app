class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :username, :login_url

  def username
    @username ||= session[:cas_user]
  end

  def login_url
    @login_url ||= RubyCAS::Filter.login_url(self)
  end

end
