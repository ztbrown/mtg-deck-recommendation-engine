Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :decks, only: [:index, :show] 
  resources :cards, only: [:index, :show] 
  resources :sets, only: [:show, :index]
  resources :deck_search, only: [:index]
  
  get 'cards/search', to: 'card_search#index'
  get '/deck_guesser', to: 'deck_guesser#index'

  root 'home#index' 
end
