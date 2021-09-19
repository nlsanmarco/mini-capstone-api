Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#delete"

  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#delete"

  post "/images" => "images#create"
  patch "/images/:id" => "images#update"
  delete "images/:id" => "images#delete"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
  patch "/carted_products/:id" => "carted_products#update"

  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
end
