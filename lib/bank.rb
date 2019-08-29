
class Bank
attr_reader :balance, :transaction

  def initialize
    @balance = 0
    @transaction = []
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    raise "Not enough money" if money > @balance
    @balance -= money
  end

end
