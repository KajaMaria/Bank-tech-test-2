
class Bank
attr_reader :balance

  def initialize
    @balance = 0
  end

  def debit(money)

  end

  def credit(money)
    raise "Not enough money" if money > @balance
  end
  
end
