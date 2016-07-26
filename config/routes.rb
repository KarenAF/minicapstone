Rails.application.routes.draw do
  get '/query_params_example' => 'params#query_params'
  get '/' => 'fruits#index'
  get '/fruits' => 'fruits#index'
  get '/fruits/new' => 'fruits#new'
  get '/fruits/search' => 'fruits#search'
  post '/fruits' => 'fruits#create'
  get '/fruits/random' => 'fruits#random'
  get '/fruits/:id' => 'fruits#show'
  get '/fruits/:id/edit' => 'fruits#edit'
  patch '/fruits/:id' => 'fruits#update'
  delete '/fruits/:id' => 'fruits#destroy'

  get '/fruits/:fruit_id/images/new' => 'images#new'
  post '/fruits/:fruit_id/images' => 'images#create'
  get '/fruits/:fruit_id/images/edit' => 'images#edit'
  patch '/fruits/:fruit_id/images' => 'images#update'

  get '/suppliers' => 'suppliers#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/orders/new' => 'orders#new'
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  get '/carted_fruits' => 'carted_fruits#index'
  post '/carted_fruits' => 'carted_fruits#create'




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
