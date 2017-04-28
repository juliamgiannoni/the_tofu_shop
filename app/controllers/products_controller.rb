class ProductsController < ApplicationController

  def index
    if params[:cat] == "all" || !params.has_key?(:cat) #shows all products if params id is "cat" or blank
      @products = Product.all
    else #shows products that only have selected category id
      @products = Product.where(category_id: params[:cat])
    end
  end

  def show
    @product = Product.find(params[:id])
  end

end
