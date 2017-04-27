class CartsController < ApplicationController
  before_action :authorize, only: [:show]

  def new
    @cart = Cart.new
  end

  def create
    @cart = Cart.new(params[:id])
    if @cart.save
      session[:cart_id] = @cart.id
    else
      render :new
    end
  end

  def show
    @products = Product.all
  end

  def update
    productid = params[:product_id]
    current_customer.cart.products << Product.find_by(id: productid)
  end

  def destroy
    current_customer.cart.products.destroy_all
    render :show
    flash[:notice] = "Clean up Tofu's poop."
  end

end
