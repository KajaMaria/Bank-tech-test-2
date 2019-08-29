
class Bank
attr_reader :balance, :transaction

  def initialize
    @balance = 0
    @transaction = Transaction.new
  end

  def deposit(credit)
    @balance += credit
    @transaction.log(credit,nil, balance)
  end

  def withdraw(debit)
    raise "Not enough money" if debit > @balance
    @balance -= debit
  end

end
