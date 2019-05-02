Rails.application.routes.draw do
	root 'roasts#index'
	  get '/roasts' => 'roasts#index', as: 'roasts'
	  get '/roasts/new' => 'roasts#new', as: 'new_roast'
	  post '/roasts' => 'roasts#create'
	  get '/roasts/:id' => 'roasts#show' , as: 'roast'
	  get '/roasts/:id/edit' => 'roasts#edit', as: 'edit_roast'
	  patch '/roasts/:id' => 'roasts#update'
	  delete '/roasts/:id' => 'roasts#destroy'


	  get '/kopis' => 'kopis#index', as: 'kopis'
	  get '/kopis/new' => 'kopis#new', as: 'new_kopi'
	  post '/kopis' => 'kopis#create'
	  get '/kopis/:id' => 'kopis#show' , as: 'kopi'
	  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
	  patch '/kopis/:id' => 'kopis#update'
	  delete '/kopis/:id' => 'kopis#destroy', as: 'delete_kopi'

	  get '/farms' => 'farms#index', as: 'farms'
	  get '/farms/new' => 'farms#new', as: 'new_farm'
	  post '/farms' => 'farms#create'
	  get '/farms/:id' => 'farms#show' , as: 'farm'
	  get '/farms/:id/edit' => 'farms#edit', as: 'edit_farm'
	  patch '/farms/:id' => 'farms#update'
	  delete '/farms/:id' => 'farms#destroy'

	  get '/orders' => 'orders#index', as: 'orders'
	  get '/orders/new' => 'orders#new', as: 'new_order'
	  post '/orders' => 'orders#create'
	  get '/orders/:id' => 'orders#show' , as: 'order'
	  get '/orders/:id/edit' => 'orders#edit', as: 'edit_order'
	  patch '/orders/:id' => 'orders#update'
	  delete '/orders/:id' => 'orders#destroy'


	  get '/roasts/:roast_id/kopis' => 'kopis#index', as: 'roast_kopis'
	  get '/roasts/:roast_id/kopis/new' => 'kopis#create', as: 'new_roast_kopi'
	  post '/roasts/:roast_id/kopis' => 'kopis#create'
	  
	  get '/farms/:farm_id/kopis' => 'kopis#index', as: 'farm_kopis'
	  get '/farms/:farm_id/kopis/new' => 'kopis#create', as: 'new_farm_kopi'
	  post '/farms/:farm_id/kopis' => 'kopis#create'

	  get '/customers' => 'customers#index', as: 'customers'
	  get '/customers/new' => 'customers#new', as: 'new_customer'
	  post '/customers' => 'customers#create'
	  get '/customers/:id' => 'customers#show' , as: 'customer'
	  get '/customers/:id/edit' => 'customers#edit', as: 'edit_customer'
	  patch '/customers/:id' => 'customers#update'
	  delete '/customers/:id' => 'customers#destroy'

	  get '/customers/:customer_id/kopis' => 'kopis#index', as: 'customer_kopis'
	  get '/customers/:customer_id/kopis/new' => 'kopis#create', as: 'new_customer_kopi'
	  post '/customers/:customer_id/kopis' => 'kopis#create'

	  get '/kopis/:kopi_id/customers' => 'customers#index', as: 'kopi_customers'
	  get '/kopis/:kopi_id/customers/new' => 'customers#create', as: 'new_kopi_customers'
	  post '/kopis/:kopi_id/customers' => 'customers#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
