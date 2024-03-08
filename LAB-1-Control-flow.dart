import 'dart:io';

main() {
  stdout.writeln('Enter any integer ? ');
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0){
    print('The number $number is even.');
  } else {
    print('The number $number is odd.');
  }
}

