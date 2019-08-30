
class Transaction

  attr_reader :record, :transaction_history, :date

  def initialize
    @record = {}
    @transaction_history = Transaction_history.new
    @date = Time.new.strftime("%d/%m/%Y")
  end

  def log(credit = nil, debit = nil, balance)
    @record = {
      date: date,
      credit: credit,
      debit: debit,
      balance: balance
    }
  end


end
