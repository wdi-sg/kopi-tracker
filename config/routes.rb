Rails.application.routes.draw do
	root 'application#hello'
	resources :farms
	resources :kopis
	resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
