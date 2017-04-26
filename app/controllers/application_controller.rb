class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :get_cats

  def get_cats
    @cats = Category.all
  end

  private
    helper_method :current_customer

    def current_customer
      @current_customer ||= Customer.find_by(id: session[:customer_id]) if session[:customer_id]
    end

    def authorize
      redirect_to login_path, alert: "Please login to begin adding items to your cart." if current_customer.nil?
    end

end
