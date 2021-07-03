Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "cuppa#list"
  get "/cuppas/new" => "cuppa#new"

  get "/cuppas/:id" => "cuppa#show"
  post "/cuppas" => "cuppa#create"

end
