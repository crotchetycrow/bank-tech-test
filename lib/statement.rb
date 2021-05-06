
class Statement

  # attr_reader :date, :credit, :debit, :balance

  # def initialize(date, credit, debit, balance)
  #   @date = Date.today.to_s
  #   @credit = credit.to_s
  #   @debit = debit.to_s
  #   @balance = balance.to_s
  # end
  
  def print_statement(bank_statement)
    statement_header
    bank_statement.each { |transaction| puts transaction.date + ' || ' + transaction.credit.to_s + ' || ' + transaction.debit.to_s + ' || ' + transaction.balance.to_s }
  end

  private

  def statement_header
    puts 'date || credit || debit || balance'
  end

end