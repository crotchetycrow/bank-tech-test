require './lib/statement'

class BankAcc

  DEFAULT_BALANCE = 0.00

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def balance
    @balance
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(amount)
    @balance = @balance - amount
  end

  def print_statement
    statement_format = Statement.new
    statement_format.print_statement
  end
end