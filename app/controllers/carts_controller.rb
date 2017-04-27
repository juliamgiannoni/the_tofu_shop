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

  def add
    if current_customer
      productid = params[:product_id]
      current_customer.cart.products << Product.find_by(id: productid)
      redirect_to :back
    else
      redirect_to login_path, alert: "Please login or register to begin adding items to your cart."
    end
  end

  def remove
    @product = Product.find_by(id: params[:product_id])
    current_customer.cart.products.delete(@product)
    redirect_to shoppingcart_path
  end

  def purchase
    current_customer.cart.products.destroy_all
    redirect_to shoppingcart_path
    flash[:notice] = "Thank you for your purchase!"
  end

end
