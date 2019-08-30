require 'transaction'

describe Transaction do

subject(:transaction) { described_class.new }

  describe '#initialize' do
    it 'should make a record of transaction' do
      expect(transaction.record).to eq({})
    end

    it 'has a date of the transaction' do
      date = Time.new.strftime("%d/%m/%Y")
      expect(transaction.date).to eq("#{date}")
    end

    it 'should take an input from account to note money in and out' do
        expect(transaction).to respond_to(:log).with(3).arguments
    end


    it 'should create a record from the input' do
      date = Time.new.strftime("%d/%m/%Y")
      credit = 1000
      debit = nil
      balance = 1000
      expect(transaction.log(credit, debit, balance)).to eq ({
        date: date,
        credit: 1000,
        debit: nil,
        balance: 1000
      })
    end
  end
end
