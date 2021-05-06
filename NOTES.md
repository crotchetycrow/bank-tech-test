# Comments

User story 5:

    We would need to include a print_statement method...

    Would this need to take an argument? Something like an account number?

          def print_statement(account_number)

          end

          - Not sure it would, because we'd be calling this on an already existing account

    That account_number would be the local memory of recent transactions.
    Not sure how I would write that just yet.

    I'd obviously need to write out the expected format so whatever was in
    the README. Private method because when I link this with BankAcc we don't
    need it accessing that method

          def statement_top
            puts date || credit || debit || balance
          end

    Slight issue with the test for print_statement. I guess I want this test to print what I want in my statement which is the header and transaction. So perhaps I need to create each element and shove that in a test?

    I've laied out my test with exactly what I want but print_statement is returning nil..It should be returning my statement_header at the very least. Seeing as my test wants test_account.print_statement to match full_statement, I'm going to basically add test_transaction to my print_statement method and see what it returns.

    Added initialize method similar to Transactions class

          attr_reader :date, :credit, :debit, :balance

          def initialize(date, credit, debit, balance)
            @date = Date.today
            @credit = credit
            @debit = debit
            @balance = balance
          end

  Not sure that's what I want. TypeError (expected numeric) - this is because of Date.today

  Maybe my print_statement method needs an argument like I had previously toyed with? That way I could iterate over it and extract the date, credit, debit and balance? But then what... Although I'm not sure why my initialize method isn't working.

      -Resolved by explicitly converting my instance variables to_s

  Now my issue is that rb:18 of statement_spec is returning nil...

  IRB test shows that it isn't exactly returning nil:
      
      3.0.0 :006 > statement = Statement.new(Date.today, 1000, '', 1000)

      => #<Statement:0x00007faf7d1326b0 @date="2021-05-05", @credit="1000", @debit="", @balance="1000"> 

      3.0.0 :007 > statement.print_statement

      date || credit || debit || balance
      2021-05-05 || 1000 ||  || 1000
      => nil 

  Oookay, by adding return instead of puts it has passed my test, but I'm not convinced. I'll check in irb but I might have to alter my test?

  IRB shows that statement.print_statement outputs the following

          date || credit || debit || balance
          => "2021-05-05 || 1000 ||  || 1000"

  Is this what I want?

  Another IRB test with my print_statement method (the one in BankAcc class) shows that my initialize method might not work the way I intend it to because it requires 4 arguments. I also should write a test for that.

What I want to achieve here is when BankAcc.print_statement is called it should return effectively what the print_statement in the Statement class is doing.

~ Post-feedback ~

    As per Simo's advice, I'm going to remove my initialize method as my transaction class will cover that.

    I think I am going to go pass an argument through my print_statement method because if I am going to put my transaction class into an array and print that then print_statement will need to accept that.
    If that's the case my argument will need to be iterated over to have each transaction on the statement print out the date, credit, debit and balance like it did before but instead of instances it will be an each statement.

    I'm trying to figure this out in my head - 

        "it 'returns the printed statement' do"

        it needs to have the "statement header"
        it then needs the "test_transaction" so it outputs what I expect a full statement to have
        this will be represented as a "full_statement" of "statement_header" + "test_transaction"

    Okay so I fiddled around with the test a little bit - I turned test_transaction into a double and rather than Date.today which I cannot get to work, I hardcoded a date instead. test_transaction is going to be fed into my test so our test is basically saying now "test_statement.print_statement(statement_output)" is going to be the same as "full_statement".

    I couldn't get \n to work until I swapped '' for "". The problem now is that it doesn't seem to like that

              1) Statement#print_statement returns the printed statement
                Failure/Error: expect(test_statement.print_statement(statement_output)).to output(full_statement).to_stdout
                
                expected block to output "date || credit || debit || balance\n2021/05/06 ||  || 1000.00 || 1000.00\n" to stdout, but was not a block
                Diff:
                @@ -1,3 +1 @@
                -date || credit || debit || balance
                -2021/05/06 ||  || 1000.00 || 1000.00

        This should be working as intended as I have puts'ed both my header and bank_statement output...
        Maybe I am misunderstanding how stdout works.

        Okay so I had another look at this: 

              https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/output-matcher

        Turns out you need curly braces because that signifies an expected change in the output

User story 1:

    Just realised @balance should probably be stored in an array? I'll try that out.
        Nope. @balance is fine, I think I need to store my transactions in an array.
    
    My Transaction class is going to be used later on in a BankAcc class method which generates a new transaction and store it within a BankAcc object (or something like that).

    I just had a thought that I could call my Transaction class, store it in an array and then call that in my (BankAcc) print_statement method and return that?