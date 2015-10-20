require_relative './card'

# Oddness
class Deck
  attr_reader :cards
  def initialize
    @cards = []
    @cards += (1..13).map { |number| Card.new(Card::HEART, number) }
    @cards += (1..13).map { |number| Card.new(Card::SPADE, number) }
    @cards += (1..13).map { |number| Card.new(Card::CLUB, number) }
    @cards += (1..13).map { |number| Card.new(Card::DIAMOND, number) }
  end
end
