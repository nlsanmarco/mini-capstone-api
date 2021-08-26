Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "all_products"

  get "/show_first", controller: "products", action: "show_first"
end
