
class Bank
attr_reader :balance, :transaction

  def initialize
    @balance = 0
    @transaction = []
  end

  def debit(money)
    @balance += money
  end

  def credit(money)
    raise "Not enough money" if money > @balance
    @balance -= money
  end

end
