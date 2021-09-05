class SuppliersController < ApplicationController
  def index
    suppliers = Supplier.all
    render json: suppliers
  end

  def show
    supplier = Supplier.find(params[:id])
    render json: supplier
  end

  def create
    supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    supplier.save
    if supplier.save
      render json: supplier
    else
      render json: supplier.errors.full_messages,
             tatus: :unprocessable_entity
    end
  end

  def update
    supplier = Supplier.find(params[:id])
    supplier.name = params[:name] || supplier.name
    supplier.email = params[:email] || supplier.email
    supplier.phone_number = params[:phone_number] || supplier.phone_number
    supplier.save
    if supplier.save
      render json: supplier
    else
      render json: supplier.errors.full_messages,
      status: :unprocessable_entity
    end
  end

  def delete
    supplier = Supplier.find(params[:id])
    supplier.destroy
    render json: { message: "Supplier successfully deleted." }
  end
end
