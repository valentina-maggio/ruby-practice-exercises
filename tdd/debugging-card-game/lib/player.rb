require 'deck'

class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @hand = []
  end

  def show_hand(reference_deck = Deck::CARDS)
    @hand.sort_by{ |card| reference_deck.index(card) }.join(', ')
  end

  def add(card)
    @hand << card
  end

end