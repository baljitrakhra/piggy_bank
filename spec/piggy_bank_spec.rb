require_relative '../lib/piggy_bank'

describe PiggyBank do
  it 'Should accept coins' do
    piggy_bank = PiggyBank.new
    coin = '50p'
    expect { piggy_bank.insert(coin) }.not_to raise_error
  end

  it 'Should not clink when empty and shaken' do
    piggy_bank = PiggyBank.new
    expect(piggy_bank.shake).to eq nil
  end
  
  it 'Should clink when shaken'do
    piggy_bank = PiggyBank.new
    coin = '50p'
    piggy_bank.insert(coin)
    expect(piggy_bank.shake).to eq 'clink'
  end

  it 'Should clink when shaken with coins in' do
    piggy_bank = PiggyBank.new
    coin = '50p'
    piggy_bank.insert(coin)
    expect(piggy_bank.shake).to eq 'clink'
  end

  it 'Break piggy bank and take coins' do
    piggy_bank = PiggyBank.new
    coin = '50p'
    coin2 = '20p'
    piggy_bank.insert(coin)
    piggy_bank.insert(coin2)
    expect(piggy_bank.break).to eq 2
  end
end