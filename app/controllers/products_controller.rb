class ProductsController < ApplicationController
  def index
    @products = Product.order("sn ASC")
    @product = Product.first
  end

  def show
    @products = Product.order("sn ASC")
    @product = Product.find(params[:id])
  end
end
