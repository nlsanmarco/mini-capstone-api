class OrdersController < ApplicationController
  def index
    orders = current_user.orders
    render json: orders
  end

  def show
    if current_user
      order = Order.find(params[:id])
      if order.user_id == current_user.id
        render json: order
      else
        render json: { message: "That is not your order!" }, status: 401
      end
    else
      render json: { message: "You must be logged in to do that" }, status: 401
    end
  end

  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    order.subtotal = order.quantity * order.product.price
    order.tax = order.subtotal * 0.0875
    order.total = order.subtotal + order.tax
    if order.save
      render json: order
    else
      render json: order.errors.full_messages, status: :unprocessable_entity
    end
  end
end
