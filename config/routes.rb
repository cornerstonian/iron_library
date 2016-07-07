Rails.application.routes.draw do

  root  'books#index'
  get   'books/new' => 'books#new', as: :new_book
  get   'books/:id' => 'books#show', as: :book
  get   'books/:id/edit' => 'books#edit', as: :edit_book

  get   'books' => 'books#index', as: :books
  post  'books' => 'books#create', as: :create_book
  patch 'books/:id' => 'books#update', as: :update_book
  delete 'books/:id' => 'books#delete', as: :delete_book

  get   'authors/:id' => 'authors#show', as: :author
  get   'authors' => 'authors#index',  as: :authors

  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete'

  get 'registration' => 'users#new', as: :new_user
  post 'registration' => 'users#create', as: :create_user

  get 'welcome/homepage'
  get 'users/index'
  get 'users/new'


  post 'books/:id' => 'books#check_out', as: :check_out
  delete 'books/:id' => 'books#check_in', as: :check_in

  get    'api/books' => 'api/books#index', as: :api_books
  get    'api/books/:id' => 'api/books#show', as: :api_book
  post   'api/books' => 'api/books#check_out'
  delete 'api/books/:id' => 'api/books#check_in'


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
