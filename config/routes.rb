Rails.application.routes.draw do
  mount ActionCable.server => "/cable"
  resources :activities do
  member do
    post 'favorites', to: 'favorites#create', as: :favorite
    delete 'favorites', to: 'favorites#destroy'
  end
    resources :reviews, only: [ :new, :create ]
    collection do
      get "event", to: "activities#event"
    end
  end
  resources :messages, only: [:create]

  resources :profiles, only: [:new, :create, :edit, :update]

  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
