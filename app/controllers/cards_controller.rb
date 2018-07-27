class CardsController < ApplicationController
  before_action :set_card, only: :show
  def index
    @cards = Card.all(:c).where("c.name =~ {name}").params(name: "(?i).*#{params[:card]}.*").pluck(:c)
  end

  def show
    @card
    @recommendations = @card.main_deck.main_deck.query_as(:cards).with("cards, count(cards) AS score").order_by('score DESC').pluck(:score, :cards)
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end
end
