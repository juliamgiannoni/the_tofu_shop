class CartsController < ApplicationController

  before_action :authorize, only: [:show, :add]

  def show
    @products = Product.all
  end

  def add # adds product to shopping cart
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

  def remove # removes products from shopping cart
    @product = Product.find_by(id: params[:product_id])
    current_customer.cart.products.delete(@product)
    redirect_to shoppingcart_path
  end

  def purchase # "purchases" items in shopping cart and clears cart
    current_customer.cart.products.destroy_all
    redirect_to shoppingcart_path
    flash[:notice] = "Thank you for your purchase!"
  end

end
