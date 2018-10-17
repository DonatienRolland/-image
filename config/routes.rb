Rails.application.routes.draw do
  get 'pictures/new'
  devise_for :users
  root to: 'pages#home'
  resources :categories, only: [ :show, :update ] do
    resources :pictures, only: [ :new ]
  end
  resources :pictures, only: [ :edit, :create, :update, :destroy ]

end
