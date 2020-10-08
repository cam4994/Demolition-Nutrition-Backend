Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :workouts
  resources :exercises
  resources :meals
  resources :entries
  resources :journals
  resources :users
  get '/current', to: 'users#current'
  post '/login', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
end
