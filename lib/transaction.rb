require 'date'

class Transaction
    
  attr_reader :date, :credit, :debit, :balance

  def initialize(date, credit, debit, balance)
    @date = Date.today
    @credit = credit
    @debit = debit
    @balance = balance
  end

end

#The transaction class needs to be linked to the bank account class and have each method link up with one another.

#This will also need to be linked with the statement class, so that when the client calls "print_statement" they will
#see this in order.