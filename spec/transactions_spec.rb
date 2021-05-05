require './lib/transactions'
require 'date'

describe Transactions do
  let(:test_tran) { Transactions.new(Date.today, 1000.00, 50.00, 950.00) }

  it 'prints a date' do
    expect(test_tran.date).to eq(Date.today)
  end
  it 'prints deposit' do
    expect(test_tran.credit).to eq(1000.00)
  end
  it 'prints withdraw' do
    expect(test_tran.debit).to eq(50.00)
  end
  it 'prints balance' do
    expect(test_tran.balance).to eq(950.00)
  end
end