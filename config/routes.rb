Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Read all
  get 'tasks', to: 'tasks#index'
  # Read One
  get 'tasks/new', to: "tasks#new", as: :new_task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Create
  post 'tasks', to: 'tasks#create'
  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # Delete
  delete "tasks/:id", to: "tasks#destroy"
end

  # # Read all
  # get "restaurants", to: "restaurants#index"
  # # Create
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"
  # # Read one
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # # Update
  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "restaurants/:id", to: "restaurants#update"
  # # Delete
  # delete "restaurants/:id", to: "restaurants#destroy"
