import 'dart:math';


abstract class Shape {

  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);
 
  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {

  Circle circle1 = Circle(10);
  Square square1 = Square(8);

  print('Area of Circle with radius ${circle1.radius} is: ${circle1.calculateArea().toStringAsFixed(2)}');

  print('Area of Square with side ${square1.side} is: ${square1.calculateArea().toStringAsFixed(2)}');
}
