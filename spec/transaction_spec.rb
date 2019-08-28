require 'transaction'

describe Transaction do

subject(:transaction) { described_class.new }

  it 'starts with an empty history' do
    expect(transaction.history).to eq([])
  end

  it 'has a date of the transaction' do
    expect(transaction.date).to eq("28/08/2019")
  end

  it 'can take a note of cash in, cash, out, balance and date' do
    expect(transaction.information("28/08/2019","20","20","0")).to eq(["28/08/2019",20.00,20.00,0.00])
  end

end
