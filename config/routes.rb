Rails.application.routes.draw do
  
  root 'static_pages#home'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'

  post 'logout', to: 'sessions#destroy'
  resources :users, only: [:new, :create, :show]

  delete 'logout' => 'sessions#destroy'
  resources :users
  resources :attractions
  resources :rides
  
end
