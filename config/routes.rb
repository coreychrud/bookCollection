Rails.application.routes.draw do
  resources :user_books
  resources :users
  resources :books
  root 'books#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :books do
    member do
      get :delete
    end
  end
end
