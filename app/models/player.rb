class Player
  include Neo4j::ActiveNode
  property :name 
  has_many :out, :decks, type: :plays
end

