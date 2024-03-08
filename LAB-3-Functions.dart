import 'dart:io';

String reverseWord(String input) {
  return String.fromCharCodes(input.runes.toList().reversed);
}

main(){
  stdout.writeln('Insert any word: ');
  String word = stdin.readLineSync()!;

  String reversed = reverseWord(word);
  print('The reversed word is: $reversed');

}