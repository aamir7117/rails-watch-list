Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "lists#index"
  resources :lists, only: %I[index create new edit show update destroy] do
    resources :movies, only: %I[show index] do
      resources :bookmarks, only: %I[show new create destroy]
    end
  end
end
