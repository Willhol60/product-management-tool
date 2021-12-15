class ProductsController < ApplicationController

  def index
    @products = current_user.products
  end

  def new
    @product = Product.new(user: current_user)
  end

  def create
    product = Product.new(product_params)
    if product.save
      redirect_to products_path
    else
      redirect_to new_product_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :size, :prices)
  end
end
