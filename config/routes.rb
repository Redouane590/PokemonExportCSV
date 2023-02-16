Rails.application.routes.draw do
  root to: "pokemons#index"
  resources :pokemons, only: [:index] do
    collection do
      post 'export_csv'
    end
  end

  get '/pokemons/index', to: 'pokemons#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
