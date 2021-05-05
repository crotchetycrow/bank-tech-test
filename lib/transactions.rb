require 'date'

class Transactions
    
  attr_reader :date, :credit, :debit, :balance

  def initialize(date, credit, debit, balance)
    @date = Date.today
    @credit = credit
    @debit = debit
    @balance = balance
  end

end