Rails.application.routes.draw do
  resources :matches
  resources :cockroaches
  resources :users

  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sesions/create', to: 'sessions#create', as: 'login'

  post '/matches/:id', to: 'matches#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
