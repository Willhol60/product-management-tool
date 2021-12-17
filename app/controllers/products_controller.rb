class ProductsController < ApplicationController

  def index
    @products = current_user.products
  end

  def new
    @product = Product.new(user: current_user)
  end

  def create
    product = Product.new(product_params)
    product.user_id = current_user.id
    if product.save
      redirect_to products_path
    else
      render 'products/new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    product = Product.find(params[:id])
    redirect_to products_path if product.destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :size, :price_ids)
  end
end
