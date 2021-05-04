require './lib/bank_account'

describe BankAcc do
  let(:account) { BankAcc.new }
  
  it 'initializes with a balance of £0' do
    expect(account.balance).to eq BankAcc::DEFAULT_BALANCE
  end

  describe '#deposit' do
    it 'allows client to deposit money into their account' do
      account
      account.deposit(100)
      expect(account.balance).to eq 100
    end
  end

  describe '#withdraw' do
    it 'allows client to withdraw from their account' do
      account
      account.deposit(100)
      account.withdraw(45)
      expect(account.balance).to eq 55
    end
  end
end