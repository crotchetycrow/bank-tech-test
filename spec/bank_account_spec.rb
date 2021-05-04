require './lib/bank_account'

describe BankAcc do
  let(:account) { BankAcc.new }
  
  it 'initializes with a balance of £0' do
    expect(account.balance).to eq 0
  end
end