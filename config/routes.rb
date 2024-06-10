Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get 'scholars/index'
  get 'scholars/new'
  get 'scholars/edit'
  delete 'scholars/:id', to: 'scholars#destroy', as: 'scholar'
  # get 'scholars/destroy'

  get 'faculties/index'
  get 'faculties/new'
  get 'faculties/show'
  get 'principals/index'
  get 'principals/new'
  get 'principals/show'

  resources :books
    # get 'books/index'
    # get 'books/show'
    # get 'books/new'
    # get 'books/create'
    # get 'books/edit'
    # get 'books/update'
    # get 'books/destroy'
  namespace :management do
    resources :students
    resources :teachers
    resources :admins
    resources :books
    
    root to: "admins#index"
  end
  # get 'user/index
  # devise_for :teachers
  # devise_for :students
  # resources :admins
  # devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "user#index"
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }
  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions',
    registrations: 'teachers/registrations'
  }
  devise_for :students, controllers: {
    sessions: 'students/sessions',
    registrations: 'students/registrations'
  }

  # Defines the root path route ("/")
 
end
