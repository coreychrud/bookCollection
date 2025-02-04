Rails.application.routes.draw do
  resources :user_books
  resources :users
  resources :books do
    member do
      get 'delete', to: 'books#delete', as: 'delete'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "user_books#index"
end