Rails.application.routes.draw do
  resources :products
  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/index'

  get 'welcome/index'

  root 'simple_pages#landing_page'

end

Rails.application.routes.draw do
  resources :orders, only: [:index, :show, :create, :destroy]
end
