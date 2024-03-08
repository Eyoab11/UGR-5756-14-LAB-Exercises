import 'dart:io';

void main() {
  Map<String, int> shoppingCart = {};

  while (true) {
    print('\nShopping Cart:');
    displayCart(shoppingCart);

    print('\nAllowed to do:');
    print('1. Add Item');
    print('2. Calculate Total Price');
    print('3. Remove Item');
    
    stdout.write('Insert the number for what you want to do (1-3): ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        addItem(shoppingCart);
        break;
      case '2':
        totalPrice(shoppingCart);
        break;
      case '3':
        removeItem(shoppingCart);
        break;
      default:
        print('\nInvalid choice. Please enter a valid option.');
    }
  }
}

void addItem(Map<String, int> cart) {
  stdout.write('Enter the product name: ');
  String productName = stdin.readLineSync()!;

  stdout.write('Enter the quantity: ');
  int quantity = int.parse(stdin.readLineSync()!);

  cart[productName] = cart.containsKey(productName) ? cart[productName]! + quantity : quantity;
  print('Item added to the cart: $productName (Quantity: $quantity)');
}

void totalPrice(Map<String, int> cart) {
  double totalPrice = 0;

  cart.forEach((productName, quantity) {
    double itemPrice = 1.50;
    totalPrice += itemPrice * quantity;
  });

  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');
}

void removeItem(Map<String, int> cart) {
  stdout.write('Enter the product name to remove: ');
  String productName = stdin.readLineSync()!;

  if (cart.containsKey(productName)) {
    int quantity = cart.remove(productName)!;
    print('Item is now removed from the cart: $productName (Quantity: $quantity)');
  } else {
    print('Item is not found in the cart.');
  }
}

void displayCart(Map<String, int> cart) {
  if (cart.isEmpty) {
    print('Cart is empty.');
  } else {
    cart.forEach((productName, quantity) {
      print('$productName: $quantity');
    });
  }
}
