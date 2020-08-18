Rails.application.routes.draw do
  resources :matches
  resources :cockroaches
  resources :users

  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/login', to: 'sessions#login', as: 'login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
