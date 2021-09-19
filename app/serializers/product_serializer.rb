class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :is_discounted?, :inventory, :tax, :total

  belongs_to :supplier
  has_many :images
  has_many :categories, through: :product_categories
end
