Rails.application.routes.draw do
  get 'roasts/index' => 'roasts#index'
  get 'roasts/:id' => 'roasts#show', as: 'roast'
  resources :origins
  resources :kopis
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end