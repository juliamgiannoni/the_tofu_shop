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
    productid = params[:product_id]
    current_customer.cart.products << Product.find_by(id: productid)
    redirect_to :back
  end


  def purchase
    current_customer.cart.products.destroy_all
    redirect_to :back
    flash[:notice] = "Thank you for your purchase!"
  end

end
