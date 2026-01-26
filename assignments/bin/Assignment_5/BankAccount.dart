class BankAccount {
  int accountID;
  double balance;

  BankAccount(this.accountID, this.balance);

  BankAccount.initial(this.accountID) : balance = 0;

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited \$${amount.toStringAsFixed(2)}');
      print('New balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Deposit amount must be positive');
    }
  }

  void withdraw(double amount) {
    double diff = balance - amount;
    if (diff < 0) {
      print('Insufficient funds!');
      print('Current balance: \$${balance.toStringAsFixed(2)}');
    } else {
      balance = diff;
      print('Withdrew \$${amount.toStringAsFixed(2)}');
      print('New balance: \$${balance.toStringAsFixed(2)}');
    }
  }

  void displayInfo() {
    print('Account ID: $accountID');
    print('Balance: \$${balance.toStringAsFixed(2)}');
  }
}
