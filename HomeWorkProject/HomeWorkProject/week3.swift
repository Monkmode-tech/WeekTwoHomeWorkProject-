// Beginning iOS & Swift: Week 3 Homework Assignment


import Foundation


// Protocol defining account behaviors
protocol Account {
    var balance: Double { get set }
    func deposit(amount: Double)
    func withdraw(amount: Double)
}

// Base class for a general-purpose bank account
class BankAccount: Account {
    var balance: Double
    private var logger = TransactionLogger()

    init(initialBalance: Double) {
        self.balance = initialBalance
    }

    func deposit(amount: Double) {
        guard amount > 0 else {
            print("Deposit amount must be positive.")
            return
        }
        balance += amount
        logger.logTransaction(type: "Deposit", amount: amount, balance: balance)
    }

    func withdraw(amount: Double) {
        guard amount > 0 else {
            print("Withdrawal amount must be positive.")
            return
        }
        if balance - amount < 0 {
            print("Insufficient funds. Withdrawal denied.")
        } else {
            balance -= amount
            logger.logTransaction(type: "Withdrawal", amount: amount, balance: balance)
        }
    }

    func printTransactions() {
        print(logger)
    }
}

// Subclass for savings accounts with interest
class SavingsAccount: BankAccount {
    private let interestRate: Double

    init(initialBalance: Double, interestRate: Double) {
        self.interestRate = interestRate
        super.init(initialBalance: initialBalance)
    }

    override func deposit(amount: Double) {
        let interest = amount * interestRate
        let totalDeposit = amount + interest
        super.deposit(amount: totalDeposit)
        print("Interest of \(interest) added to deposit.")
    }
}

// Struct for transaction logging
struct TransactionLogger: CustomStringConvertible {
    private var transactions: [String] = []

    mutating func logTransaction(type: String, amount: Double, balance: Double) {
        let transaction = "\(type): $\(amount) | Balance: $\(balance)"
        transactions.append(transaction)
    }

    var description: String {
        return transactions.joined(separator: "\n")
    }
}

// Testing the system in a playground
func performAction() {
    let generalAccount = BankAccount(initialBalance: 1000)
    generalAccount.deposit(amount: 500)
    generalAccount.withdraw(amount: 200)
    generalAccount.withdraw(amount: 1500) // Insufficient funds
    generalAccount.printTransactions()

    let savingsAccount = SavingsAccount(initialBalance: 2000, interestRate: 0.02)
    savingsAccount.deposit(amount: 1000)
    savingsAccount.withdraw(amount: 500)
    savingsAccount.printTransactions()
}

performAction() 

