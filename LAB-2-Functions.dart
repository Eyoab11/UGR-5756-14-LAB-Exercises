import 'dart:io';


bool isPrime(int number) {
  if (number < 2) {
    return false; 
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false; 
    }
  }
  return true;
} 

void main() {
 
  stdout.writeln('Inster the range to begin with: ');
  int startingNum = int.parse(stdin.readLineSync()!);

  stdout.writeln('Insert the range to end with: ');
  int endingNum = int.parse(stdin.readLineSync()!);

 print('Prime numbers in the range $startingNum - $endingNum:');
  for (int i = startingNum; i <= endingNum; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}
