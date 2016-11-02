Rails.application.routes.draw do
  root 'photos#index'

  get 'photos/' => 'photos#index'
  get 'photos/new' => 'photos#new', as: :new_photo
  get 'photos/:id' => 'photos#show', as: :photo
  post 'photos/' => 'photos#create'
  get 'photos/:id/edit' => 'photos#edit', as: :edit_photo
  patch 'photos/:id' => 'photos#update'
  delete 'photos/:id' => 'photos#destroy'

  get 'users/' => 'users#index'
  get 'users/new' => 'users#new', as: :new_user
  get 'users/:id' => 'users#show', as: :user
  post 'users/' => 'users#create'
  patch 'users/:id' => 'users#update'
  get 'users/:id/edit' => 'users#edit', as: :edit_user
  delete 'users/:id' => 'users#destroy'

  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
