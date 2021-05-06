require './lib/statement'
require './lib/bank_account'
require './lib/transaction'

describe Statement do

  let(:test_statement) { Statement.new }
  let(:test_account) { BankAcc.new }

  let(:statement_top) { "date || credit || debit || balance\n" }
  let(:string_transaction) { "2021/05/06 ||  || 1000.00 || 1000.00\n" }
  let(:test_transaction) { double(:transaction, date: "2021/05/06", credit: '', debit: '1000.00', balance: '1000.00') }


  describe '#print_statement' do
    it 'returns the printed statement' do
      
      statement_output = [test_transaction]
      full_statement = statement_top + string_transaction
      expect { test_statement.print_statement(statement_output) }.to output(full_statement).to_stdout
    end
   end
end
