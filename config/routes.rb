Rails.application.routes.draw do

  resources :users
  resources :products do
    resources :comments
  end
resources :users
  get 'static_pages/landing_page'

  get 'static_pages/landing_page'

   get 'static_pages/about'

  root 'static_pages#contact'
   
  root 'static_pages#index'

  post 'static_pages/thank_you'
  
 resources :orders, only:
[:index, :show, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
