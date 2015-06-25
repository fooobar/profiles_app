Rails.application.routes.draw do

  root "welcome#index"

  get     '/login' =>   'sessions#new'
  post    '/login' =>   'sessions#create'
  delete  '/logout' =>  'sessions#destroy'

  resources :sessions, only: [ :new, :create, :destroy]

  resources :user, :jobs

  get '/users/new/student' => 'users#new_student'
  get '/users/new/employer' => 'users#new_employer'

end