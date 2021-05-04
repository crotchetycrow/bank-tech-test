require 'date'

class Transactions
    
  attr_reader :date, :credit, :balance

  def initialize(date, credit, balance)
    @date = Date.today
    @credit = credit
    @balance = balance
  end

end