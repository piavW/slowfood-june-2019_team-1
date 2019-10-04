class ProductsController < ApplicationController
  before_action :authenticate_admin!, only:[:edit, :update, :destroy, :create, :new] 
  
  def index
    @categories = Category.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    
    if @product.update(product_params)
      redirect_to root_path
    else 
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :category_id)
  end  
end
