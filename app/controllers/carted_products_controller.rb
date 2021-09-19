class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    if carted_product.save
      render json: carted_product
    else
      render json: carted_product.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    carted_product = CartedProduct.find(params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: { status: "Carted Product successfully removed." }
  end
end
