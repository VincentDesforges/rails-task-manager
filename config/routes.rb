Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Read all
  get "tasks", to: "tasks#index"
  # find one
  get "task/:id", to: "tasks#show", as: "task"
  # create new
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  # update
  get "task/:id/edit", to: "tasks#edit", as: "task_update"
  patch "task/:id", to: "tasks#update"
  # delete
  delete "task/:id", to: "tasks#destroy"
end
