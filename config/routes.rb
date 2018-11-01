Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/auteure', to: "pages#auteure", as: 'auteure'
  get '/mentionslegales', to: "pages#mentionslegales", as: 'mentionslegales'
  resources :categories, only: [ :show, :create, :edit, :update, :new, :destroy ] do
    resources :pictures, only: [ :new ] do
      collection do
        patch :sort
      end
    end
    resources :albums, only: [ :new ]
  end

  get '/:title' => "categories#presentation", as: :categories_title
  get 'albums/:title' => "albums#show", as: :album

  resources :users, only: [ :edit, :update ]

  resources :pictures, only: [ :edit, :create, :update, :destroy ]
  resources :albums, only: [ :edit, :create, :update, :destroy ]

end






