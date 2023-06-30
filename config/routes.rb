Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:create, :show, :index]
  post '/signup', to: 'users#create', as: 'signup'
  delete '/logout', to: 'sessions#destroy', as: 'logout' 
  post '/login', to: 'users#create',as:'login'
  # Add this line for the DELETE request to "/logout"
end
