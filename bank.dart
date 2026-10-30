class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("تم السحب بنجاح. الرصيد المتبقي: $_balance");
    } else {
      print("عذراً، الرصيد غير كافي أو المبلغ غير صالح!");
    }
  }
}

void main() {
  BankAccount myAccount = BankAccount("12345", 1000.0);

  print("الرصيد الحالي: ${myAccount.balance}");

  myAccount.withdraw(1500.0);

  myAccount.withdraw(400.0);
}
