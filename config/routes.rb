Rails.application.routes.draw do

  root "welcome#index"

  get     '/login' =>   'sessions#new'
  post    '/login' =>   'sessions#create'
  get  '/logout' =>  'sessions#destroy'

  resources :sessions, only: [ :new, :create, :destroy]

  resources :jobs, :skills
  resources :jobs
  resources :skills, only: [:update]

  resources :users do
  	resources  :projects, :skills, :experiences, :jobs
  end

  
  get '/users/new/student' => 'users#new_student'
  get '/users/new/employer' => 'users#new_employer'

  delete '/users/:user_id/:job_id/:id' => 'skills#destroy2'

end