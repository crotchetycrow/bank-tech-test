require './lib/transactions'

describe Transactions do
  let(:test_tran) { Transactions.new('2021-05-04') }

  it 'prints a date' do
    expect(test_tran.date).to eq('2021-05-04')
  end
end