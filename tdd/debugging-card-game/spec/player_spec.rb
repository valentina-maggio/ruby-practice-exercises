require 'player'

describe Player do
  it 'starts with an empty hand' do
    player = Player.new("Alice")
    expect(player.show_hand).to eq ''
  end

  it 'can add a card to its hand' do
    player = Player.new("Alice")
    player.add('K♢')
    expect(player.show_hand).to eq 'K♢'
  end

  it 'keeps hand sorted according to deck order' do
    player = Player.new("Alice")
    player.add('C')
    player.add('A')
    expect(player.show_hand(['A','B','C','D'])).to eq 'A, C'
  end
end