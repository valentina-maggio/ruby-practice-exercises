require 'dice_app'

describe Dice do

  subject(:dice) { described_class.new }

  it 'can roll a dice' do
    expect { dice.roll }.to_not raise_error
  end

  it 'can give a number between 1 and 6' do
    expect(dice.roll).to be_between(1, 6).inclusive
  end

  it 'can roll any number of dice at the same time' do
    expect(dice.roll_more(2)).to be_between(2, 12).inclusive
  end

  it 'can record each dice roll score' do
    allow(dice).to receive(:score).and_return([2, 5])
    expect(dice.score(2)).to eq [2, 5]
  end

  ## TO COMPLETE
  # it 'can show the current score after rolling several dice' do
  #   allow(dice).to receive(:score).and_return([2, 5])
  #   expect(dice.score_history).to eq 7
  # end
end

