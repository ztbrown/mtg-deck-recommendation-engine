class CardRecommendationsController < ApplicationController
  def index
    @cards = Card.where(name: params[:card]).main_deck.main_deck.query_as(:cards).with("cards, count(cards) AS score, collect(cards)[0] AS card_names").order_by("score DESC").pluck(:score, :card_names)
  end
end
