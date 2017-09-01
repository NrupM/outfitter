Rails.application.routes.draw do
  root 'users#index'

  get '/users', to: 'users#index', as: 'users'
  get '/users/new', to: 'users#new', as: "new_user"
  get '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get '/items', to: 'items#index', as: 'items'
  get '/items/new', to: 'items#new', as: "new_item"
  get '/items', to: 'items#create'
  get '/items/:id', to: 'items#show', as: 'item'
  get '/items/:id/edit', to: 'items#edit', as: 'edit_item'
  patch '/items/:id', to: 'items#update'
  delete '/items/:id', to: 'items#destroy'


  get '/outfits', to: 'outfits#index', as: 'outfits'
  get '/outfits/new', to: 'outfits#new', as: "new_outfit"
  get '/outfits', to: 'outfits#create'
  get '/outfits/:id', to: 'outfits#show', as: 'outfit'
  get '/outfits/:id/edit', to: 'outfits#edit', as: 'edit_outfit'
  patch '/outfits/:id', to: 'outfits#update'
  delete '/outfits/:id', to: 'outfits#destroy'

end
