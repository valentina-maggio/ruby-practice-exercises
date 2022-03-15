require 'deck'

class Game
  def initialize(players, deck = Deck.new)
    @deck = deck
    @players = players
  end

  def shuffle_deck
    @deck.shuffle
  end

  def deal(nb_of_cards)
    nb_of_cards.times do 
      @players.each do |player|
        card = @deck.draw
        player.add(card)
      end
    end
  end

  def show_player_hands
    @players.sort_by(&:name).map do |player|
      puts "#{player.name}: #{player.show_hand}"
    end
  end

end