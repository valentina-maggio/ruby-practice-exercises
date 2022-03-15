require 'game'

describe Game do
  let(:deck) { double :deck }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#shuffle_deck' do
    it 'calls shuffle on the deck' do
      game = Game.new([player_1, player_2], deck)
      expect(deck).to receive :shuffle
      game.shuffle_deck
    end
  end

  describe '#deal' do
    it 'calls draw 8 times on the deck if dealing 4 cards to 2 players' do
      game = Game.new([player_1, player_2], deck)
      allow(player_1).to receive :add
      allow(player_2).to receive :add
      expect(deck).to receive(:draw).exactly(8).times
      game.deal(4)
    end

    it 'gives 3 cards to each player if dealing 3 cards to to players' do
      game = Game.new([player_1, player_2], deck)
      allow(deck).to receive(:draw)
      expect(player_1).to receive(:add).exactly(3).times
      expect(player_2).to receive(:add).exactly(3).times
      game.deal(3)
    end

    it 'gives cars from the deck to players when dealing' do
      game = Game.new([player_1, player_2], deck)
      allow(deck).to receive(:draw).and_return("a", "b")
      expect(player_1).to receive(:add).with("a")
      expect(player_2).to receive(:add).with("b")
      game.deal(1)
    end

    it 'show_player_hands displays a string using player name and hand' do
      game = Game.new([player_1], deck)
      allow(player_1).to receive(:name).and_return("Helen")
      allow(player_1).to receive(:show_hand).and_return("helen's hand")
      expect{game.show_player_hands}.to output("Helen: helen's hand\n").to_stdout
    end

    it 'show_player_hands sorts players alphabetically by name' do
      game = Game.new([player_1, player_2], deck)
      allow(player_1).to receive(:name).and_return("Wendy")
      allow(player_2).to receive(:name).and_return("Andrew")
      allow(player_1).to receive(:show_hand)
      allow(player_2).to receive(:show_hand)
      expect{game.show_player_hands}.to output("Andrew: \nWendy: \n").to_stdout
    end
  end
end