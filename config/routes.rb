Rails.application.routes.draw do

  resources :gossips, except: [:destroy] do
    resources :comments, only: [:new, :create, :index, :destroy]
  end 

  resources :users

  get 'pages/welcome', to: 'pages#welcome'
  get 'pages/contact', to: 'pages#contact'
  get 'pages/team', to: 'pages#team'
  get 'pages/:id', to: 'pages#id'
end
