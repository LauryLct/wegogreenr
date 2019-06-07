Rails.application.routes.draw do
  mount ActionCable.server => "/cable"
  resources :activities do
    collection do
      get "event", to: "activities#event"
    end
  end
  resources :messages, only: [:create]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
