
class Transaction

  attr_reader :date, :history

  def initialize
    @history = []
  end

  def information(cash_in, cash_out, balance)
     @history.push(cash_in.to_f, cash_out.to_f, balance.to_f)
  end

end
