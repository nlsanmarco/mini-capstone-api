class ProductsController < ApplicationController
  def all_products
    products = Product.all
    render json: products.as_json
  end

  def show_first
    product = Product.first
    render json: product.as_json
  end
end
