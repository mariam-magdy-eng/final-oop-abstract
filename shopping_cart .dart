abstract class Product {
  String name;
  double price;
  Product(this.name, this.price);

  double calculateDiscount();
}

class Electronics extends Product {
  Electronics(String name, double price) : super(name, price);
  @override
  double calculateDiscount() {
    // TODO: implement calculateDiscount
    return price * 0.10;
  }
}

class Clothing extends Product {
  Clothing(String name, double price) : super(name, price);

  @override
  double calculateDiscount() {
    return price * 0.20;
  }
}

class ShoppingCart {
  final List<Product> _products = [];
  void addProduct(Product product) {
    _products.add(product);
    print('تمت إضافة: ${product.name} إلى السلة.');
  }

  void removeProduct(Product product) {
    _products.remove(product);
    print('تمت إزالة: ${product.name} من السلة.');
  }

  double calculateFinalTotal() {
    double total = 0;

    for (var product in _products) {
      double discount = product.calculateDiscount();
      double finalPriceForProduct = product.price - discount;

      print(
        '- ${product.name}: السعر الأصلي = \$${product.price} | الخصم = \$${discount} | السعر بعد الخصم = \$${finalPriceForProduct}',
      );

      total += finalPriceForProduct;
    }

    return total;
  }
}

void main() {
  Product laptop = Electronics('Laptop', 1000.0);
  Product tShirt = Clothing('T-Shirt', 50.0);
  Product headphones = Electronics('Headphones', 200.0);

  ShoppingCart cart = ShoppingCart();

  print('--- إضافة المنتجات للسلة ---');
  cart.addProduct(laptop);
  cart.addProduct(tShirt);
  cart.addProduct(headphones);

  print('\n حساب إجمالي السلة بعد الخصومات ');
  double finalTotal = cart.calculateFinalTotal();

  print('الإجمالي النهائي المطلوب دفعه: \$$finalTotal');
}
