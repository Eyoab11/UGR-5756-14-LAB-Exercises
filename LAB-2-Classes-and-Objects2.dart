class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double totalCost() {
    return price * quantity;
  }
}

void main() {
  Product myProduct = Product('Laptop', 50000, 10);

  print('Total Cost: ${myProduct.totalCost().toStringAsFixed(0)}');
}
