Rails.application.routes.draw do



  resources :sessions, only: [:new, :create, :destroy]

  resources :gossips do
    resources :comments
  end 

  resources :users

  resources :cities

  get 'signup', to: 'users#new', as: 'signup'  
  get 'login', to: 'sessions#new', as: 'login'  
  get 'logout', to: 'sessions#destroy', as: 'logout'  

  get 'pages/welcome', to: 'pages#welcome'
  get 'pages/contact', to: 'pages#contact'
  get 'pages/team', to: 'pages#team'
  get 'pages/:id', to: 'pages#id'
end
