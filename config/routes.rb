Rails.application.routes.draw do
  resources :activities do
    collection do
      get "event", to: "activities#event"
    end
    resources :messages, only: [:create]
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
