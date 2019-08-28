
class Transaction

  attr_reader :date, :history

  def initialize
    @date = Time.new.strftime("%d/%m/%Y")
    @history = []
  end

  def information(cash_in, cash_out)
    p @history.push(cash_in.to_f, cash_out.to_f)
  end
end
