Rails.application.routes.draw do
  get 'kopis/index'
  get 'kopis/new'
  get 'kopis/create'
  get 'kopis/show'
  get 'index/new'
  get 'index/create'
  get 'index/show'
  get 'kopis/new'
  get 'kopis/create'
  get 'kopis/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :kopis
end