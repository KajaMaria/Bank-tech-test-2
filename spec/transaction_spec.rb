require 'transaction'

describe Transaction do

subject(:transaction) { described_class.new }

  describe '#initialize' do
    it 'should make a record of transaction' do
      expect(transaction.record).to eq({})
    end

    it 'should take an input from account to note money in and out' do
        expect(transaction).to respond_to(:log).with(3).arguments
    end

    it'should create a transaction history with a date' do
      expect(transaction.transaction_history.date).to eq(Time.new.strftime("%d/%m/%Y"))
    end 

    it 'should create a record from the input' do
      credit = 1000
      debit = nil
      balance = 1000
      expect(transaction.log(credit, debit, balance)).to eq ({
        credit: 1000,
        debit: nil,
        balance: 1000
      })
    end
  end
end
