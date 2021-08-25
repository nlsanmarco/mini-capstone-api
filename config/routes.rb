Rails.application.routes.draw do
  get "/all_products" controller: "Products" action: "all_products"
end
