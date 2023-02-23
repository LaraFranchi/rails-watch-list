Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"



  get '/bookmarks/new', to: 'bookmarks#new', as: :new_bookmark

  post '/bookmarks', to: 'bookmarks#create'
end

