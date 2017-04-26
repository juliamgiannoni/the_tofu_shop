class CartsController < ApplicationController
  def index
    @carts = Cart.all
    @products = Product.all
  end
end
