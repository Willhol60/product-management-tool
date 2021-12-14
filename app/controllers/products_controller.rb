class ProductsController < ApplicationController

  def index
    @products = current_user.products
  end

  def new

  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
