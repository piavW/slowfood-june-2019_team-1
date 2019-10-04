class ProductsController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.all
  end
  def show 
  end
end
