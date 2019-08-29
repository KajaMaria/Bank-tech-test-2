require 'transaction'

describe Transaction do

subject(:transaction) { described_class.new }

  it 'should make a record of transaction' do
    expect(transaction.record).to eq({})

  end

end
