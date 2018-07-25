class Deck 
  include Neo4j::ActiveNode
  property :name, type: String
  property :url
  has_many :out, :main_deck, type: :main_deck, model_class: :Card
  has_many :out, :sideboard, type: :sideboard, model_class: :Card
 
  enum type: [:standard, :commander, :modern]
end
