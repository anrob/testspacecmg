Rails.application.routes.draw do
  
  get 'home/index'

  resources :jobs do 
   get :payroll, on: :member
  end
  resources :staffings
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :actcodes
  resources :contracts
  resources :players
  #resources :contracts, :only=>[:index]

  #mount ForestLiana::Engine => '/forest'
  resources :managements
  
  resources :contracts do
   get :confirmjob, on: :member 
   #get :report, on: :member
   get :paypeople, on: :member 
   get :emailjobwithnetonly, on: :member
   get :emailjobwithallmoney, on: :member
   get :emailjobnomoney, on: :member
  # get :search, on:  :member
   
   end
   get 'users/show'

  devise_for :users
   #devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :skip => [:sessions, :passwords, :registrations]
  get 'home/sidenav'

  get 'home/dashboard'
  get 'home/listusers'
  get 'calendar', to: 'contracts#calendar' 
  get 'report',   to: 'contracts#report' 
  get 'alljobs',  to: 'contracts#alljobs' 
  get 'payroll',  to: 'contracts#payroll'
  get 'search',   to: 'contracts#search'
  
  
   #get '/confirmjob', to: "contracts#confirmjob"
   get '/emailjobwithnetonly', to: "contracts#emailjobwithnetonly"
   get '/emailjobwithallmoney', to: "contracts#emailjobwithallmoney"
   get '/emailjobnomoney', to: "contracts#emailjobnomoney"


# devise_for :users, :skip => [:sessions, :passwords, :registrations]
#,  path_names: {
 #     sign_in: 'login', sign_out: 'logout',
#      password: 'secret', confirmation: 'verification',
 #     registration: 'register', edit: 'edit/profile'
#    }
  


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
  resources :users

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
  root :to => "contracts#index"
  # root :to => "home#index"
end
