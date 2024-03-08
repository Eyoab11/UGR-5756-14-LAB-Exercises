import 'dart:io';


double sum(double num1, double num2) {
  return num1 + num2;
}

void main() {

  stdout.writeln('Insert the first number: ');
  double number1 = double.parse(stdin.readLineSync()!);

  stdout.writeln('Enter the second number: ');
  double number2 = double.parse(stdin.readLineSync()!);

  double add = sum(number1, number2);
  print('The sum is $add');
}
