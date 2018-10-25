Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :categories, only: [ :show, :update ] do
    resources :pictures, only: [ :new ]
    resources :albums, only: [ :show, :destroy ]
  end

  get '/:title' => "categories#presentation", as: :categories
  get 'albums/:title' => "albums#show", as: :album

  resources :pictures, only: [ :edit, :create, :update, :destroy ]

end






