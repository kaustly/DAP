class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied, with: :access_denied

  private
  def access_denied
    redirect_to root_url, alert: "access denied"
  end
end
