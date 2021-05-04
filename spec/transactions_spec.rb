require './lib/transactions'
require 'date'

describe Transactions do
  let(:test_tran) { Transactions.new(Date.today, 1000, 10) }

  it 'prints a date' do
    expect(test_tran.date).to eq(Date.today)
  end
  it 'prints deposit/withdraw' do
    expect(test_tran.credit).to eq(1000)
  end
  it 'prints balance' do
    expect(test_tran.balance).to eq(10)
  end
end