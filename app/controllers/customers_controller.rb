class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:notice] = "You've successfully created an account."
    else
      render :new
    end
  end

private
  def customer_params
    params.require(:customer).permit(:customer_name, :customer_email, :password, :password_confirmation)
  end
end
