class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  Product myProduct = Product("Mobile", 12000, 2);

  print("Total Cost: \$${myProduct.calculateTotalCost()}");
}
