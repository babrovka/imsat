class ProductsController < ApplicationController
  def index
    @products = Product.published.order("sn ASC")
    @product = Product.published.first
  end

  def show
    @products = Product.published.order("sn ASC")
    @product = Product.find(params[:id])
    redirect_to products_path if !@product.published
  end
end
