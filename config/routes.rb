GroupBuy::Application.routes.draw do
  resources :pricings

  resources :items

  resources :invoices

  resources :campaigns

  devise_for :users, :controllers => {:registrations => 'registrations'}
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    #     match "/users/manage"               => 'registrations#manage_users', :as => "manage_users"
    #     match "/user/:id/edit_as_admin"     => 'registrations#edit_as_admin', :as => "edit_as_admin"
    #     match "/user/:id/update_as_admin"   => 'registrations#update_as_admin', :as => "update_as_admin"
    # match "/users/manage_deleted"       => 'registrations#manage_deleted_users', :as => "manage_deleted_users"
    # match "/user/:id/soft_delete_user"  => 'registrations#delete_user', :as => "delete_user"
    # match "/user/:id/restore"           => 'registrations#restore_user', :as => "restore_user"
  end
  resources :user, :controller => "registrations"
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'campaigns#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
