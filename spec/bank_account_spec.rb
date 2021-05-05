require './lib/bank_account'

describe BankAcc do
  let(:account) { BankAcc.new }
  let(:test_statement) { Statement.new(Date.today, 1000.00, '', 1000.00) }

  it 'initializes with a balance of £0' do
    expect(account.balance).to eq BankAcc::DEFAULT_BALANCE
  end

  describe '#deposit' do
    it 'allows client to deposit money into their account' do
      account
      account.deposit(100.00)
      expect(account.balance).to eq 100.00
    end
  end

  describe '#withdraw' do
    it 'allows client to withdraw from their account' do
      account
      account.deposit(100.00)
      account.withdraw(45.00)
      expect(account.balance).to eq 55.00
    end
  end

  describe '#print_statement' do
    it 'prints a statement with the balance' do
      account.deposit(1000.00)
      account.print_statement
      expect(account.print_statement).to match test_statement
    end
  end
end