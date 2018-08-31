Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :decks, only: [:index, :show] 
  resources :cards, only: [:index, :show] do 
   get 'search', on: :collection 
  end
  resources :sets, only: [:show, :index]
  resources :deck_search, only: [:index]
  
  get '/deck_guesser', to: 'deck_guesser#index'

  root 'home#index' 
end
