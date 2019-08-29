require 'transaction'

describe Transaction do

subject(:transaction) { described_class.new }

  it 'starts with an empty history' do
    expect(transaction.history).to eq([])
  end

  # it 'has a date of the transaction' do
  #   date = Time.new.strftime("%d/%m/%Y")
  #   expect(transaction.date).to eq("#{date}")
  # end

  it 'can take a note of cash in, cash, out, balance and date' do
    expect(transaction.information("20","20","0")).to eq([20.00,20.00,0.00])
  end

end
