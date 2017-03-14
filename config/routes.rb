Rails.application.routes.draw do

 # mount RailsEmailPreview::Engine, at: 'emails'
 # get 'home/index'
  #devise_for :users
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :jobs do
   get :payroll, on: :member
  end
  resources :staffings
  #devise_for :admin_users, ActiveAdmin::Devise.config
  resources :actcodes
  resources :contracts
  resources :players
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
  get 'home/sidenav'
  get 'home/dashboard'
  get 'home/listusers'
  get 'calendar', to: 'contracts#calendar'
  get 'report',   to: 'contracts#report'
  get 'alljobs',  to: 'contracts#alljobs'
  get 'payroll',  to: 'contracts#payroll'
  get 'search',   to: 'contracts#search'
  get '/emailjobwithnetonly', to: "contracts#emailjobwithnetonly"
  get '/emailjobwithallmoney', to: "contracts#emailjobwithallmoney"
  get '/emailjobnomoney', to: "contracts#emailjobnomoney"


   #incoming mail
   resources :incoming_mails
    post 'incoming', to: "incoming_mails#create"

# devise_for :users, :skip => [:sessions, :passwords, :registrations]
#,  path_names: {
 #     sign_in: 'login', sign_out: 'logout',
#      password: 'secret', confirmation: 'verification',
 #     registration: 'register', edit: 'edit/profile'
#    }

#  resources :users
  #get 'user_path' => 'contracts#index'

 root :to => "contracts#index"
   #root :to => "contracts#dashboard"
end
