require './lib/transactions'
require 'date'

describe Transactions do
  let(:test_tran) { Transactions.new(Date.today, 1000, 500, 10) }

  it 'prints a date' do
    expect(test_tran.date).to eq(Date.today)
  end
  it 'prints deposit' do
    expect(test_tran.credit).to eq(1000)
  end
  it 'prints withdraw' do
    expect(test_tran.debit).to eq(500)
  end
  it 'prints balance' do
    expect(test_tran.balance).to eq(10)
  end
end