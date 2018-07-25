class CardsController < ApplicationController
  before_action :set_card, only: :show
  def show
    @card
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end
end
