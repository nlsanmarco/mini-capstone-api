class ImagesController < ApplicationController
  def create
    image = Image.new(
      url: params[:url],
      product_id: params[:product_id],
    )
    image.save
    if image.save
      render json: image
    else
      render json: image.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    image = Image.find(params[:id])
    image.url = params[:url] || image.url
    image.product_id = params[:product_id] || image.product_id
    image.save
    if image.save
      render json: image
    else
      render json: image.errors.full_messages,
             status: :unprocessable_entity
    end
  end

  def delete
    image = Image.find(params[:id])
    image.destroy
    render json: { message: "Image successfully deleted." }
  end
end
