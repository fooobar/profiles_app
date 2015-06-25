Rails.application.routes.draw do

  root "welcome#index"

  get     '/login' =>   'sessions#new'
  post    '/login' =>   'sessions#create'
  get  '/logout' =>  'sessions#destroy'

  resources :sessions, only: [ :new, :create, :destroy]

  resources :users do
  	resources  :projects, :skills, :experiences
  end
  
  get '/users/new/student' => 'users#new_student'
  get '/users/new/employer' => 'users#new_employer'

end