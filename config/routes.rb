Rails.application.routes.draw do
  resources :posts, only: [:new, :create, :index]
  
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', via: 'delete'

  root 'posts#index'
end
