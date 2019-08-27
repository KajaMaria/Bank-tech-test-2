require 'bank'

describe Bank do
  subject(:bank) { described_class.new }

  it ' respons to debit with one argument' do
    expect(bank).to respond_to(:debit).with(1).argument
  end

end
