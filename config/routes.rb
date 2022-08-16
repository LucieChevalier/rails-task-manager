Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # READ add a new route to list the tasks
  get '/tasks', to: 'tasks#index'

  # CREATE add two routes to handle the creation of a task
  # One route is there to display the Task form
  get "tasks/new", to: "tasks#new", as: 'new_task'

  # and another one is there to handle the POST request generated when submitting this form
  post "tasks", to: "tasks#create"

  # we would like to click on the task title and navigate to a new page, displaying the details of this task
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  # UPDATE
  get "tasks/:id/edit", to: "tasks#edit", as: 'edit_task'
  patch "tasks/:id", to: "tasks#update"

  # DELETE
  delete "tasks/:id", to: "tasks#destroy"

end
