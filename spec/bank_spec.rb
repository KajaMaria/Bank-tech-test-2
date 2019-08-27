require 'bank'

describe Bank do
  subject(:bank) { described_class.new }

  it ' respons to debit with one argument' do
    expect(bank).to respond_to(:debit).with(1).argument
  end

  it 'reponds to credit with one argument' do
    expect(bank).to respond_to(:credit)
  end

  it ' startst with zero balance' do
    expect(bank.balance).to eq 0
  end

  it 'doest not allow to withdraw money if balance is below 0 ' do
    expect{ bank.credit(10) }.to raise_error "Not enough money"
  end

  it 'allows to add money to debit' do
    expect(bank.debit(10)).to eq(10)
  end
  
end
