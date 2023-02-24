Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/create'
  get 'lists/new'
  get 'lists/show'
  get 'movies/index'
  get 'movies/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %I[index create new edit show update destroy] do
    resources :movies, only: %I[show] do
      resources :bookmarks, only: %I[show new create destroy]
    end
  end
end
