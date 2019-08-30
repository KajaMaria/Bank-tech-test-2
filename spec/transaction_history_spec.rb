require 'transaction_history'

describe Transaction_history do

subject(:transaction_history) { described_class.new }
    context '#initialize' do
      it 'comes with an empty statment ' do
        expect(transaction_history.statement).to eq([])
      end
    end
    context '#add_record' do
      it 'allows to include recors of trasaction in a statment' do
        test_record = { date: "test" }
        transaction_history.add_record(test_record)
        expect(transaction_history.statement).to eq [{
            date: "test"
          }]
      end
    end


end
