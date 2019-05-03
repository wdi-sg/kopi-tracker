Rails.application.routes.draw do
  # kopis' routes
  root 'kopis#index'
  resources :kopis
end