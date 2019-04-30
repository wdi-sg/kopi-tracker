# frozen_string_literal: true

Rails.application.routes.draw do
  get 'farms/index'
  get 'farms/show'
  get 'farms/new'
  get 'farms/edit'
  get 'kopis/index'
  get 'kopis/show'
  get 'kopis/new'
  get 'kopis/edit'
  get 'kopis/create'
  get 'kopis/update'
  get 'kopis/destroy'
  get 'kopis/kopi_params'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :kopis
  resources :farms do
    resources :kopis
  end
end
