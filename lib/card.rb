# Dah dah dah
class Card
  HEART = '♥'
  SPADE = '♠'
  DIAMOND = '♦'
  CLUB = '♣'

  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
  end
end
