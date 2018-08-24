class DeckSearchController < ApplicationController
  def index
    render json: Neo4j::ActiveBase.current_session.query('WITH {ids} as cards MATCH (c:Card)<-[:main_deck]-(d:Deck) WHERE c.id in cards WITH d, size(cards) as inputCnt, count(DISTINCT c) as cnt RETURN d, 100.0 * (cnt * 1.0/inputCnt) as Strength ORDER BY Strength DESC', ids: params[:cards])
  end
end
