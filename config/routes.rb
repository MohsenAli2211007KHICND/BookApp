Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :books
  # post '/book/create', to: 'book#create'
  # Defines the root path route ("/")
  # root "articles#index"
end
