require 'transaction'

describe Transaction do

subject(:transaction) { described_class.new }

  describe '#initialize' do
    it 'should make a record of transaction' do
      expect(transaction.record).to eq({})
    end

    it 'should take an input from account to note money in and out' do
        expect(transaction).to respond_to(:log).with(1).argument
    end

  end
end
