class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token

  layout :layout_by_controller

  protected

  def layout_by_controller
    devise_controller? ? 'devise' : 'application'
  end
end
