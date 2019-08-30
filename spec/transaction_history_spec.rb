require 'transaction_history'

describe Transaction_history do

subject(:transaction_history) { described_class.new }
    context '#initialize' do
      it 'has a date of the transaction' do
        date = Time.new.strftime("%d/%m/%Y")
        expect(transaction_history.date).to eq("#{date}")
      end
      it 'comes with an empty statment ' do
        expect(transaction_history.statement).to eq([])
      end
    end


end
