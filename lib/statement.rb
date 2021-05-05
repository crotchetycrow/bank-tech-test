
class Statement

  attr_reader :date, :credit, :debit, :balance

  def initialize(date, credit, debit, balance)
    @date = Date.today
    @credit = credit
    @debit = debit
    @balance = balance
  end
  
  def print_statement
    statement_header
    puts @date + ' || ' + @credit + ' || ' + @debit + ' || ' + @balance
  end

  private

  def statement_header
    puts 'date || credit || debit || balance'
  end

end