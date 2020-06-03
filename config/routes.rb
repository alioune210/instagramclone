Rails.application.routes.draw do
  root 'sessions#new'
  resources :posts
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
  get '/favorites', to: 'favorites#index'
  
  resources :posts do
    collection do
      post :confirm
    end
  end

  mount LetterOpenerWeb::Engine, at: "/inbox" if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
