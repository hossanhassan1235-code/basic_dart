class BankAccount {
  String accountID;
  double balance;

  BankAccount(this.accountID, this.balance);

  BankAccount.zero(this.accountID) : balance = 0.0 {}

  void deposit(double amount) {
    balance = balance + amount;
    print('Deposited: $amount, Total: $balance');
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance = balance - amount;
      print('Withdrew: $amount, Remaining: $balance');
    } else {
      print('Insufficient balance!');
    }
  }
}

void main() {
  BankAccount acc1 = BankAccount('101', 500.0);
  acc1.deposit(100.0);
  acc1.withdraw(200.0);
  acc1.withdraw(900.0);

  print('---');

  BankAccount acc2 = BankAccount.zero('102');
  acc2.deposit(150.0);
  acc2.withdraw(50.0);
}
