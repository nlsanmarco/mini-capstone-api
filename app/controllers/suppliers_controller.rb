class SuppliersController < ApplicationController
  def index
    suppliers - Supplier.all
    render json: supplier.as_json
  end

  def show
    supplier = Supplier.find(params[:id])
    render json: supplier.as_json
  end

  def create
    supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    supplier.save
    render json: supplier.as_json
  end

  def update
    supplier = Supplier.find(params[:id])
    supplier.name = params[:name] || supplier.name
    supplier.email = params[:email] || supplier.email
    supplier.phone_number = params[:phone_number] || supplier.phone_number
    supplier.save
    render json: supplier.as_json
  end

  def delete
    supplier = Supplier.find(params[:id])
    supplier.destroy
    render json: { message: "Supplier successfully deleted." }
  end
end
