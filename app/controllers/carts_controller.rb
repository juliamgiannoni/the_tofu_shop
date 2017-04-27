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
    # @cart = Cart.find(params[:id])
    @products = Product.all
  end
end
