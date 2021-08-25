class ProductsController < ApplicationController
  def all_products
    products = Product.ApplicationController
    render json: products.as_json
  end

  def show_one
    puts "Please enter the number of the product you would like to see"
  end
end
