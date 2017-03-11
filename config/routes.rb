Rails.application.routes.draw do



  resources :users

  root 'static_pages#landing_page'

  resources :products do
    resources :comments
  end

  resources :orders, only: [:index, :show, :create, :destroy]



  get 'static_pages/about', to: 'static_pages#about'

  get 'static_pages/contact', to: 'static_pages#contact'

  get 'static_pages/landing_page', to: 'static_pages#landing_page'

  
  

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

