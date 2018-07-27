Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :decks, only: [:index, :show] 
  resources :card_recommendations, only: [:index]
  resources :cards, only: [:show, :index]
  root 'home#index' 
end
