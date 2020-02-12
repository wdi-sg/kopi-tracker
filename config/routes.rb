Rails.application.routes.draw do
  root "origins#index"
  get "/origins/new" => "origins#new"
  get "/origins/:id" => "origins#show", as: "origin"
  post "/origins" => "origins#create"

  get "/origins/:id/kopis/new" => "origins#new_kopi"
  post "/origins/:id/kopis/" => "origins#create_kopi", as: "new_kopi"

  get "/roasts/" => "roasts#index"
  get "/roasts/:id" => "roasts#show"

  get "/orders" => "orders#index", as:"all_orders"
  get "/orders/new" => "orders#new"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

  get "/reports" => "reports#index", as: "reports"
end
