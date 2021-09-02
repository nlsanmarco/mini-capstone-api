class Product < ApplicationRecord
  belongs_to :supplier

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
