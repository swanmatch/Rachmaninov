Rails.application.routes.draw do
  resources :chords
  get 'welcome/index'
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

#  Ryakuzu::Engine.routes.draw do
  resources :chords
  resources :songs
  resources :composers
#    resources :tables, only: [:create]
#
#    post 'column',          to: 'tables#column',          as: :column
#    post 'column_options',  to: 'tables#column_options',  as: :column_options
#    post 'remove_column',   to: 'tables#remove_column',   as: :remove_column
#    post 'remove_table',    to: 'tables#remove_table',    as: :remove_table
#    post 'add_column_form', to: 'tables#add_column_form', as: :add_column_form
#    post 'add_column',      to: 'tables#add_column',      as: :add_column
#    post 'add_table',       to: 'tables#add_table',       as: :add_table
#    post 'create_table',    to: 'tables#create_table',    as: :create_table
#    post 'new_column',      to: 'tables#new_column',      as: :new_column
#    post 'save_csv',        to: 'tables#save_csv',        as: :save_csv
#
  root 'welcome#index'
#  end
  mount Ryakuzu::Engine => '/ryakuzu'
end
