class SetsController < ApplicationController
  before_action :set_set, only: :show
  
  def index
    @sets = CardSet.all.sort {|a,b| a.name <=> b.name}
  end 

  def show
    @set
    @cards = @set.cards.sort {|a,b| a.name <=> b.name}
  end

  private

  def set_set
    @set = CardSet.find(params[:id])
  end
end
