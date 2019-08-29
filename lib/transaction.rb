
class Transaction

  attr_reader :record

  def initialize
    @record = {}
  end

  def log(credit = nil, debit = nil, balance)
    @record = {
      credit: credit,
      debit: debit,
      balance: balance
    }
  end


end
