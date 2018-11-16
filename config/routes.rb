Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

  root to: 'pages#home'
  get '/auteure', to: "pages#auteure", as: 'auteure'
  get '/mentionslegales', to: "pages#mentionslegales", as: 'mentionslegales'
  resources :categories, only: [ :show, :create, :edit, :update, :new, :destroy, :index ] do
    collection do
      patch :sort
    end
    resources :pictures, only: [ :new ] do
    end
    resources :albums, only: [ :new ]
  end

  get '/:title' => "categories#presentation", as: :categories_title
  get 'albums/:title' => "albums#show", as: :album

  resources :users, only: [ :edit, :update ]

  resources :pictures, only: [ :edit, :create, :update, :destroy ]

  resources :albums, only: [ :edit, :create, :update, :destroy ] do
    collection do
      patch :sort
    end
  end


  get "/404", to: "error#not_found"
  get "/422", to: "error#unacceptable"
  get "/500", to: "error#internal_error"
end






