Rails.application.routes.draw do
  devise_for :users
  resources :users

  resources :products do
  resources :comments
  resources :payments
  end

  mount ActionCable.server => '/cable'

  resources :orders, only: [:index, :show, :create, :destroy]

  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/index'

  get 'welcome/index'

  get 'simple_pages/landing_page'

  get 'payments/create'

  root 'simple_pages#landing_page'

  post 'simple_pages/thank_you'

end
