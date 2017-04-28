class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      session[:customer_id] = @customer.id
      redirect_to root_path
    else
      render :new
    end
  end

private
  def customer_params
    params.require(:customer).permit(:customer_name, :customer_email, :password, :password_confirmation)
  end

end
