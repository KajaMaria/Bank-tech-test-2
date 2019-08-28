
class Transaction

  attr_reader :date, :history

  def initialize
    @date = Time.new.strftime("%d/%m/%Y")
    @history = []
  end

  def information(date, cash_in, cash_out, balance)
    p @history.push(@date, cash_in.to_f, cash_out.to_f, balance.to_f)
  end

end
