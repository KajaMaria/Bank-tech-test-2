
class Transaction

  attr_reader :date

  def initialize
    @date = Time.new.strftime("%d/%m/%Y")

  end

  def information(cash_in)
    cash_in.to_f
  end
end
