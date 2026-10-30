abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCardPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print(
      'Processing payment of \$$amount via Credit Card. Connecting to bank gateway...',
    );
  }
}

class CashPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print(
      'Processing payment of \$$amount in Cash. Collecting physical money...',
    );
  }
}

void main() {
  print('--- Credit Card Payment ---');
  PaymentMethod creditCard = CreditCardPayment();
  creditCard.pay(250.75);

  print('\n--- Cash Payment ---');
  PaymentMethod cash = CashPayment();
  cash.pay(45.0);
}
