class Card
  include Neo4j::ActiveNode
  has_many :in, :main_deck, type: :main_deck, model_class: :Deck
  has_many :in, :sets, type: :card, model_class: :CardSet
  has_many :out, :sub_types, type: :subtypes, model_class: :Subtype
  has_many :out, :super_types, type: :supertypes, model_class: :Supertype
  property :name
  property :mana_cost
  property :cmc
  property :colors
  property :rarity
  property :text
  property :flavor
  property :layout
  property :names
  property :mana_cost
  property :cmc
  property :colors
  property :type
  property :supertypes
  property :subtypes
  property :types
  property :rarity
  property :text
  property :flavor
  property :artist
  property :number
  property :power
  property :toughness
  property :loyalty
  property :multiverse_id
  property :variations
  property :watermark
  property :border
  property :timeshifted
  property :hand
  property :life
  property :reserved
  property :release_date
  property :starter
  property :rulings
  property :printings
  property :original_text
  property :original_type
  property :legalities
  property :source
  property :image_url
  property :set
  property :id
  property :set_name
  property :color_identity

  def recommendations
  end
end

