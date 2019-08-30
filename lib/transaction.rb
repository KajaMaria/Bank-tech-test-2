
class Transaction

  attr_reader :record, :transaction_history

  def initialize
    @record = {}
    @transaction_history = Transaction_history.new
  end

  def log(credit = nil, debit = nil, balance)
    @record = {
      credit: credit,
      debit: debit,
      balance: balance
    }
  end


end
