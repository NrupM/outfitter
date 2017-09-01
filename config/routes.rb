Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'

  get '/users', to: 'users#index', as: 'users'

  get '/items', to: 'items#index', as: 'items'
end
