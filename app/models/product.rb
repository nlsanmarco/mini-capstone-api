class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { in: 0..9999.99 }
  validates :description, length: { in: 10..500 }
  # validates_format_of :image, with: %r{\.(png|jpg|jpeg)$}i

  belongs_to :supplier
  has_many :images

  def is_discounted?
    if price < 10
      true
    else
      false
    end
  end

  def tax
    tax = price * 0.09
  end

  def total
    price_with_tax = price + tax
  end
end
