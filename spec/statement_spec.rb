require './lib/statement'
require './lib/bank_account'
require './lib/transactions'

describe Statement do

  let(:test_statement) { Statement.new(Date.today, 1000.00, '', 1000.00) }
  let(:test_account) { BankAcc.new }

  let(:statement_top) { 'date || credit || debit || balance\n' }
  let(:test_transaction) { Transactions.new(Date.today, 1000.00, '', 1000.00) }

  describe '#print_statement' do
    it 'returns the printed statement' do
      statement_top
      test_transaction.to_s
      full_statement = statement_top + test_transaction.to_s
      expect(test_statement.print_statement).to match(full_statement)
    end
   end
end
