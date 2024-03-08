import 'dart:io';

void main() {
  try {
    stdout.writeln('Insert any number:');
    String number = stdin.readLineSync()!;

    int inputNum = int.parse(number);
    print('Converted Number: $inputNum');
  } catch (e) {
    print('FormatException: Invalid input');
  }
}
