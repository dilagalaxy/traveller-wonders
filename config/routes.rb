Rails.application.routes.draw do
devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
 delete 'logout' => 'sessions#destroy', :controllers => { :registraions => "user_registration"}
  
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]

  get 'static_pages/landing_page'
  get 'static_pages/landing_page'
  get 'static_pages/about'
  get'static_pages/contact'  
  post 'static_pages/thank_you'
  root 'static_pages#index'
  post '/reset_password', to: 'reset_password#create', as: 'send_reset_password'
 resources :password_resets,     only: [:new, :create, :edit, :update]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
