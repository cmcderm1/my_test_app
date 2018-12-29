Rails.application.routes.draw do
  get 'simple_page/index'

  get 'welcome/index'

  root 'welcome#index'
end
