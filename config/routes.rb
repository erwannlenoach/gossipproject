Rails.application.routes.draw do


  resources :sessions, only: [:new, :create, :destroy]
  
  
  resources :gossips do
    resources :comments
  end 

  resources :users

  resources :cities

  get 'pages/welcome', to: 'pages#welcome'
  get 'pages/contact', to: 'pages#contact'
  get 'pages/team', to: 'pages#team'
  get 'pages/:id', to: 'pages#id'
end
