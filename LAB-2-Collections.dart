import 'dart:math';

void main() {
  List<int> randomNum = List.generate(10, (_) => Random().nextInt(20));
  print('Initial List of Random Numbers: $randomNum');
  Set<int> uniqueNum = Set<int>.from(randomNum);
  print('Unique Numbers: $uniqueNum');
}
