Rails.application.routes.draw do
  get 'called/payments'

devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => { :registrations => "user_registrations" }

  resources :products do 
   resources :comments
end 

  resources :users
  resources :orders, only: [:index, :show, :create, :destroy]

  get 'static_pages/landing_page'
  get 'static_pages/about'
  get'static_pages/contact'  
  post 'static_pages/thank_you'
  post 'payments/create'

  root 'static_pages#index'
end
