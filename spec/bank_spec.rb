require 'bank'

describe Bank do
  subject(:bank) { described_class.new }

  let(:transaction) { double(:transaction) }


  it ' respons to debit with one argument' do
    expect(bank).to respond_to(:deposit).with(1).argument
  end

  it 'reponds to credit with one argument' do
    expect(bank).to respond_to(:withdraw)
  end

  it ' startst with zero balance' do
    expect(bank.balance).to eq 0
  end

  it 'doest not allow to withdraw money if balance is below 0 ' do
    expect{ bank.withdraw(10) }.to raise_error "Not enough money"
  end

  it 'allows to add money to debit' do
    expect(bank.deposit(10)).to eq(10)
  end

  it 'allows to deduct money from balance' do
    bank.deposit(10)
    expect(bank.withdraw(10)).to eq(0)
  end

  it 'has can have a new transaction' do
    expect(bank.transaction).to eq([])
  end



end
