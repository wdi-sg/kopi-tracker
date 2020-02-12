Rails.application.routes.draw do
  devise_for :users
  root "origins#index"
  get "/origins/new" => "origins#new"
  get "/origins/:id" => "origins#show", as: "origin"
  post "/origins" => "origins#create"

  # get "/origins/:id/kopis/new" => "origins#new_kopi"
  # post "/origins/:id/kopis/" => "origins#create_kopi", as: "new_kopi"

  get "/roasts/" => "roasts#index"
  get "/roasts/:id" => "roasts#show"
  get "/roasts/:id/edit" => "roasts#edit"
  patch "/roasts/:id" => "roasts#update", as: "roast"

  get "/orders" => "orders#index", as:"all_orders"
  get "/orders/new" => "orders#new", as:"new_order"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

  get "/reports" => "reports#index", as: "reports"

  get "/kopis/new" => "kopis#new", as: "new_kopi"
  post "/kopis" => "kopis#create"
end
