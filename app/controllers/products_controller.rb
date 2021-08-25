class ProductsController < ApplicationController
  def all_products
    products = Product.ApplicationController
    render json: products.as_json
  end
end
