require 'transaction'

describe Transaction do

subject(:transaction) { described_class.new }

  it 'has a date of the transaction' do
    expect(transaction.date).to eq("28/08/2019")
  end

  it 'can take a note of a the money debitted or creditted to and from clients account' do
    expect(transaction.information("20","20")).to eq([20.00,20.00])
  end


end
