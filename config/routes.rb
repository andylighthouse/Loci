Rails.application.routes.draw do
  resources :users
  root 'application#index'
  resource :session, only: [:create, :destroy]

  post '/send_message', to: 'chats#send_message'
  get 'chats/:room', to: 'chats#message' # params[:room]

  # resources :chats, only: [:show] 

  post '/send_text', to: 'users#text'
  get 'profile/:id', to: "profiles#show"


#-----------OmniAuth Facebook Login---------------#
  get 'auth/:provider/callback', to: "sessions#fbcreate"

  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'
#-----------OmniAuth Facebook Login---------------#

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:

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
