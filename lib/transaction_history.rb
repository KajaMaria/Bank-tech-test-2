
class Transaction_history

attr_reader :date

  def initialize
    @date = Time.new.strftime("%d/%m/%Y")
  end

end