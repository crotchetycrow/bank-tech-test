# User Stories

1.
As a Client
So that I can have somewhere to keep my money safe
I want to be able to open a bank account

2.
As a Client
So that I can store my money in my account
I want to be able to make a deposit

3.
As a Client
So that I can take my money out of my account
I want to be able to make a withdrawl

4.
As a Client
So that I know when transactions were made
I want to see dates next to my transactions

5.
As a Client
So that I can check my statement
I want to be able to print my account statement

~ a comment to add: credit is to add amount, debit is to take away amount, will need to make adjustments to Transactions class

6.
As a Client
So I can see the most recent transactions first
I want the statements to be in reverse chronological order

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

  Not sure that's what I want

User story 1:

    Just realised @balance should probably be stored in an array? I'll try that out.
        Nope. @balance is fine, I think I need to store my transactions in an array.
    

----------------------------------
# Bank tech test

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Self-assessment

Once you have completed the challenge and feel happy with your solution, here's a form to help you reflect on the quality of your code: https://docs.google.com/forms/d/1Q-NnqVObbGLDHxlvbUfeAC7yBCf3eCjTmz6GOqC9Aeo/edit