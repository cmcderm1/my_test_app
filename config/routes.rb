Rails.application.routes.draw do
  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/index'

  get 'welcome/index'


  root 'simple_pages#index'

end
