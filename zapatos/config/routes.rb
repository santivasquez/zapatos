Rails.application.routes.draw do
  get 'sesion/new'

  get 'sesion/create'

  get 'sesion/destroy'

  resources :sesion

  resources :users
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
