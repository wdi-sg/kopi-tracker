Rails.application.routes.draw do
  devise_for :users
	root 'kopis#index'
	resources :farms
	resources :kopis
	resources :orders
	resources :roasts
	resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
