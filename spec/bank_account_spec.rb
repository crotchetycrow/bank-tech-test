require './lib/bank_account'

describe BankAcc do
  let(:account) { BankAcc.new }
  
  it 'initializes with a balance of £0' do
    expect(account.balance).to eq 0
  end

  describe '#deposit' do
    it 'allows client to deposit money into their account' do
      account
      account.deposit(100)
      expect(account.balance).to eq 100
    end
  end
end