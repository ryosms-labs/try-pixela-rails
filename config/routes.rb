Rails.application.routes.draw do
  resources :users
  root 'users#index'
  get '/users/:id/graphs/new', to: 'graphs#new', as: 'new_graph'
  post '/users/:id/graphs', to: 'graphs#create', as: 'graphs'
  resources :graphs, only: [:show, :edit, :update, :destroy]
end
