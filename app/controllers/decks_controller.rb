class DecksController < ApplicationController
  before_action :set_deck, only: :show 

  def index
    @decks = Deck.all
  end

  def show
    @deck
  end

  private

  def set_deck
    @deck = Deck.find(params[:id])
  end 
end
