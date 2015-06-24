Rails.application.routes.draw do

  root "welcome#index"

  get     '/login' =>   'sessions#new'
  post    '/login' =>   'sessions#create'
  delete  '/logout' =>  'sessions#destroy'

  resources :sessions, only: [ :new, :create, :destroy]

  resources :users

  get '/users/new/student' => 'users#new_student'
  get '/users/new/employer' => 'users#new_employer'

  post '/projects' => 'projects#new'
  post '/skills' => 'sessions#new'
  post '/experiences' => 'experiences#new'

  patch '/projects' => 'projects#update'
  patch '/projects' => 'projects#update'
  patch '/projects' => 'projects#update'

end