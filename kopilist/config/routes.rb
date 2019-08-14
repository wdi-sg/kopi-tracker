Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'
  resources :kopis
  resources :orders
end

# console to call all kopis that are dark
# Roast.find_by(name: "Dark").kopi