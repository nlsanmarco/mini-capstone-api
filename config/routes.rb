Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "all_products"

  get "/products", controller: "products", action: "show_one"
end
