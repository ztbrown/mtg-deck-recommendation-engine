class Subtype
  include Neo4j::ActiveNode
  has_many :in, :cards, type: :cards
  property :name
end
