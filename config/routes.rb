Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/bookmarks', to: 'bookmarks#new'

  post '/bookmarks', to: 'bookmarks#create'

  
  get '/lists', to: 'lists#index' # WORKS

  get '/lists', to: 'lists#new'

  get '/lists/:id', to: 'lists#show', as: :list # WORKS

  post '/lists/', to: 'lists#create' # WORKS
end

# BookmarksController
#   routing
#     routes to #new (FAILED - 23)
#     routes to #create (FAILED - 24)
#     routes to #destroy (FAILED - 25)

# ListsController
#   routing
#     routes to #index
#     routes to #new (FAILED - 26)
#     routes to #show
#     routes to #create
