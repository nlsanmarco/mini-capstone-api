class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :inventory, :tax, :total

  belongs_to :supplier
  has_many :images
end
