require "http"
system "clear"

response = HTTP.get("http://localhost:3000/products/2")

product_data = response.parse(:json)

puts product_data
product = product_data.price
product.price = 2

product_data.destroy

# product.price = 2
# puts product
