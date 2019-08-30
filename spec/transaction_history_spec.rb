require 'transaction_history'

describe Transaction_history do

subject(:transaction_history) { described_class.new }
    context '#initialize' do
      it 'comes with an empty statment ' do
        expect(transaction_history.statement).to eq([])
      end
    end


end
