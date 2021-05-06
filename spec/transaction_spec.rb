require './lib/transaction'
require 'date'

describe Transaction do
  let(:test_transaction) { Transaction.new(Date.today, 1000.00, 50.00, 950.00) }

  it 'prints a date' do
    expect(test_transaction.date).to eq(Date.today)
  end
  it 'prints deposit' do
    expect(test_transaction.credit).to eq(1000.00)
  end
  it 'prints withdraw' do
    expect(test_transaction.debit).to eq(50.00)
  end
  it 'prints balance' do
    expect(test_transaction.balance).to eq(950.00)
  end
end