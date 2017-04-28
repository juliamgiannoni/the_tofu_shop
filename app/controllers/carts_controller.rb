class CartsController < ApplicationController

  before_action :authorize, only: [:show, :add]

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
    line_item = current_customer.cart.line_items.find_by(product_id: productid)
    if line_item
      line_item.quantity += 1
      line_item.save
    else
      LineItem.create(cart: current_customer.cart, product_id: productid, quantity: 1)
    end
    redirect_to :back
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
