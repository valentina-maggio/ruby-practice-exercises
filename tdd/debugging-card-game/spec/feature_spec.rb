require 'game'
require 'player'

describe 'playing a game' do
  it 'can play a full game' do
    p1 = Player.new("Bob")
    p2 = Player.new("Alice")
    p3 = Player.new("Charlie")
    game = Game.new([p1,p2,p3])
    srand(3)
    game.shuffle_deck
    game.deal(4)
    expect{game.show_player_hands}.to output(<<-output
Alice: A♠, J♠, Q♡, 6♣
Bob: 9♠, 7♡, 3♣, 4♣
Charlie: 4♠, 9♡, 5♣, 8♣
output
    ).to_stdout
  end
end