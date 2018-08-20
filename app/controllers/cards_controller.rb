class CardsController < ApplicationController
  before_action :set_card, only: :show
  def index
    @cards = Card.all(:c).where("c.name =~ {name}").params(name: "(?i).*#{params[:card]}.*").pluck(:c)
  end

  def show
    @card
    @recommendations = Neo4j::ActiveBase.current_session.query("MATCH (card:Card {id: \"#{@card.id}\" })<-[:main_deck]-(d)-[r:main_deck]->(c) WITH c, count(c) as strength OPTIONAL MATCH(c)<-[:card]-(s:CardSet) OPTIONAL MATCH(c)-[:types]->(types:CardType) RETURN c, collect(s) as cardsets, collect(types) as cardtypes, strength ORDER BY strength DESC").to_a
    @sets = (@recommendations.map {|a| a.cardsets }.flatten! || []).uniq.sort {|a,b| a.name <=> b.name}
    @types = (@recommendations.map {|a| a.cardtypes }.flatten! || []).uniq.sort {|a,b| a.name <=> b.name}
  end

  private
  
  def set_card
    @card = Card.find(params[:id])
  end
end
