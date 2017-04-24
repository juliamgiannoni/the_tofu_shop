class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
    helper_method :current_user

    def current_user
      @current_user ||= Customer.find_by(id: session[:customer_id]) if session[:customer_id]
    end

end
