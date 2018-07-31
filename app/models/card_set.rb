class CardSet
  include Neo4j::ActiveNode
  has_many :out, :cards, type: :card, model_class: :Card
  property :code
  property :name
  property :release_date
  property :block
end
