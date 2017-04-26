class ProductsController < ApplicationController

  def index
    if params[:cat] == "all" || !params.has_key?(:cat)
      @products = Product.all
    else
      @products = Product.where(category_id: params[:cat])
    end

  end

  def show
    @product = Product.find(params[:id])
  end

end
