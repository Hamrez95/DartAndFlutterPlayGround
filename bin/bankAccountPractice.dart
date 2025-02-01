class BankAccount {
  int accountNumber;
  String accountHolderName;
  double balance;
  List<String> _transactionHistory;

  BankAccount(this.accountNumber, this.balance, this.accountHolderName)
      : _transactionHistory = [];

  void deposit(double amount) {
    if (amount <= 0) {
      print("Deposit amount must be greater than zero.");
      return;
    }
    balance += amount;
    _transactionHistory.add("Deposited: $amount, New Balance: $balance");
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdrawal amount must be greater than zero.");
      return;
    }
    if (amount > balance) {
      print("Insufficient balance for withdrawal.");
      return;
    }
    balance -= amount;
    _transactionHistory.add("Withdrew: $amount, New Balance: $balance");
  }

  void displayBalance() {
    print("Account Balance: $balance");
  }

  void displayTransactionHistory() {
    if (_transactionHistory.isEmpty) {
      print("No transactions yet.");
    } else {
      print("Transaction History:");
      for (var transaction in _transactionHistory) {
        print(transaction);
      }
    }
  }
}

void main() {
  BankAccount bankAccount = BankAccount(32145, 250, 'Hamid');

  bankAccount.displayBalance();
  bankAccount.displayTransactionHistory();

  bankAccount.deposit(1000);
  bankAccount.displayBalance();
  bankAccount.displayTransactionHistory();

  bankAccount.withdraw(500);
  bankAccount.displayBalance();
  bankAccount.displayTransactionHistory();

  // Test edge cases
  bankAccount.deposit(-100); // Invalid deposit
  bankAccount.withdraw(-200); // Invalid withdrawal
  bankAccount.withdraw(1000); // Insufficient balance
}
