Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create]
      resources :registrations, only: [:create]
      resources :users, only: [:create, :show, :index, :update, :destroy]
      resources :tasks, only: [:create, :show, :index, :update, :destroy]
      delete :logout, to: "sessions#logout"
      get :logged_in, to: "sessions#logged_in"
      # post '/login', to: 'auth#create'
      # get '/profile', to: 'users#profile'
    end
  end
end
