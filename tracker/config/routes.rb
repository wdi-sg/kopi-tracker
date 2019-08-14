Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders
  root "orders#index"
  get "/kopi" => "kopis#price"
  get "/kopi/new" => "kopis#new"
  post "/kopi/create" => "kopis#create"
  get "/reports" => "reports#index"
  get "/reports/sales" => "reports#totalsales"
  get "/reports/kopi" => "reports#kopi"
  get "/reports/origin" => "reports#origin"

end
