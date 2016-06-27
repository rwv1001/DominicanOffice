Rails.application.routes.draw do
  get 'password_resets/new'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :password_resets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#index'
end
