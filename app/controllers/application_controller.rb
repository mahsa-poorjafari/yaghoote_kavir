class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #before_filter :authenticate
  include ApplicationHelper
  
  protected
    def check_autentication
      redirect_to :root unless session[:admin].present?
    end
    
    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        username == "raush" && password == "co"
      end
    end
    
 
  
end
