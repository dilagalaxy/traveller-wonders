Rails.application.routes.draw do

  resources :users
  resources :products do
    resources :comments
  end
resources :users
  get 'static_pages/landing_page'

  get 'static_pages/landing_page'

   get 'static_pages/about'

   get'static_pages/contact'
   
  root 'static_pages#index'
  
 resources :orders, only:
[:index, :show, :create, :destroy]


  post 'static_pages/thank_you'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
