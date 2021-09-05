class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products
  end

  def show
    product = Product.find(params[:id])
    render json: product
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      inventory: params[:inventory],
      supplier_id: params[:supplier_id],
    )
    product.save

    if product.save
      render json: product
    else
      render json: product.errors.full_messages,
      status: :unprocessable_entity
    end
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.inventory = params[:inventory] || product.inventory
    product.supplier_id = params[:supplier_id] || product.supplier_id
    product.save
    if product.save
      render json: product
    else
      render json: product.errors.full_messages,
             status: :uprocessable_entity
    end
  end

  def delete
    product = Product.find(params[:id])
    product.destroy
    render json: { message: "Product successfully deleted." }
  end
end
