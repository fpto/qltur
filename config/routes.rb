Rails.application.routes.draw do
  root'pages#home'
  get '/pages/imprint' => 'pages#imprint'

  get '/concerts' => 'concerts#index'
  get 'concerts/new' => 'concerts#new'
  post 'concerts' => 'concerts#create'
  get 'concerts/:id' => 'concerts#show', as: :concert
  get '/concerts/:id/edit' => 'concerts#edit', as: :edit_concert
  patch '/concerts/:id' => 'concerts#update'
  resources :concerts

  get '/venues' => 'venues#index'
  get 'venues/new' => 'venues#new'
  get '/venues/:id' => 'venues#show', as: :venue
  post 'venues' => 'venues#create'
  resources :venues

  get 'signup'  => 'users#new'
  get 'welcome' => 'users#welcome'
  get 'myconcerts' => 'users#myconcerts'
  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  resources :attendees

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
