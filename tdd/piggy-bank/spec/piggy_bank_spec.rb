require 'piggy_bank'

describe PiggyBank do
  it 'can put coins in a new piggy bank' do
    piggy_bank = PiggyBank.new
    expect do
      piggy_bank.put_coins(10)
    end.to_not raise_error
  end
  it 'can shake piggy bank' do
    piggy_bank = PiggyBank.new
    expect do
      piggy_bank.shake
    end.to_not raise_error
  end
  it 'can return "cling" when shaken and coins not zero' do
    piggy_bank = PiggyBank.new
    piggy_bank.put_coins(10)
    expect(piggy_bank.shake).to eq "Cling"
  end
  it 'can break the piggy bank' do
    piggy_bank = PiggyBank.new
    expect do
      piggy_bank.break
    end.to_not raise_error
  end
  it 'can break piggy bank to return money' do
    piggy_bank = PiggyBank.new
    piggy_bank.put_coins(10)
    expect(piggy_bank.break).to eq 10
  end
end