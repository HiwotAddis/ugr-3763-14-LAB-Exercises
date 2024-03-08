class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

void main() {
  List<Product> cart = [];
  cart.add(Product('Apple', 2.0));
  cart.add(Product('Banana', 1.5));

  double totalPrice =
      cart.map((product) => product.price).reduce((a, b) => a + b);
  print('Total price: $totalPrice');

  cart.removeWhere((product) => product.name == 'Apple');
  print('Updated cart: $cart');
}
