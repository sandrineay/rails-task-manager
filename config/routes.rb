Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # CRUD ROUTES

  # # read all the task
  # get 'tasks', to: 'tasks#index'

  # # add a new task to the app: retrieve info from form and feed it to the index
  # get 'tasks/new', to: 'tasks#new'
  # post 'tasks', to: 'tasks#create'

  # # read one task
  # get 'tasks/:id', to: 'tasks#show', as: 'task'

  # # update the info of a given task
  # get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # patch 'tasks/:id', to: 'tasks#update'

  # # delete a task
  # delete 'tasks/:id', to: 'tasks#destroy'

  resources :tasks
end
