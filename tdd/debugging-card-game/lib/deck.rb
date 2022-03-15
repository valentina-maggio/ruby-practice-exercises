class Deck

  CARDS = [
    'A♠','2♠','3♠','4♠','5♠','6♠','7♠','8♠','9♠','10♠','J♠','Q♠','K♠',
    'A♡','2♡','3♡','4♡','5♡','6♡','7♡','8♡','9♡','10♡','J♡','Q♡','K♡',
    'A♢','2♢','3♢','4♢','5♢','6♢','7♢','8♢','9♢','10♢','J♢','Q♢','K♢',
    'A♣','2♣','3♣','4♣','5♣','6♣','7♣','8♣','9♣','10♣','J♣','Q♣','K♣',
  ].freeze

  def initialize
    @cards = Array.new(CARDS)
  end

  def shuffle
    @cards.shuffle!
  end

  def draw
    @cards.pop
  end
end