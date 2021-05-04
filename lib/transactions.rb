require 'date'

class Transactions
    
  attr_reader :date, :credit

  def initialize(date, credit)
    @date = Date.today
    @credit = credit
  end

end