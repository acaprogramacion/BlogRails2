Rails.application.routes.draw do
  get 'citas', to: 'public_meet#new', as: 'public_meet'
  post 'citas/create', to: 'public_meet#create_meet', as: 'create_meet'

  get 'public_posts/index'
  get 'articulos/:url', to: 'public_posts#show', as: 'public_post'
  get 'categorias/:id', to: 'public_posts#posts_category', as: 'posts_category'


  root 'public_posts#index'

  devise_for :users

  resources :meets

  resources :ads

  resources :comments
  post 'comments/create', to: 'public_posts#create_comment', as: 'create_comment_post'


  resources :categories

  resources :posts
  get 'admin', to: 'posts#index', as: 'admin_post'




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
