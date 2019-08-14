Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'
  resources :kopis
end

# console to call all kopis that are dark
# Roast.find_by(name: "Dark").kopi