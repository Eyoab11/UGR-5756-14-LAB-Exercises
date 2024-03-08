import 'dart:io';

void main() {
  stdout.writeln('Insert the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.writeln('Enter an operator use any of these only(+, -, *, /): ');
  String sign = stdin.readLineSync()!;

  stdout.writeln('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (sign) {
    case '+':
      result = num1 + num2;
      print('Solution: $num1 + $num2 = $result');
      break;
    case '-':
      result = num1 - num2;
      print('Solution: $num1 - $num2 = $result');
      break;
    case '*':
      result = num1 * num2;
      print('Solution: $num1 * $num2 = $result');
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
        print('Solution: $num1 / $num2 = $result');
      } else {
        print('Error, DivideByZeroException');
      }
      break;
    default:
      print('Invalid operator.');
      break;
  }
}
