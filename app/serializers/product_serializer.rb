class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image_url, :description, :inventory, :tax, :total, :supplier
end
