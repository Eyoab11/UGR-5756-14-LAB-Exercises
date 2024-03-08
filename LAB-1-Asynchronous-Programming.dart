import 'dart:async';
import 'dart:math';


Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 3));

  List<String> quote = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac consequat ex, vel eleifend dolor.",
    "Quisque accumsan nisi eu felis imperdiet, vel condimentum ipsum volutpat",
    "The curious cat gracefully leapt from the windowsill, its eyes fixed on the fluttering butterfly outside.",
  ];

  Random random = Random();
  int index = random.nextInt(quote.length);
  return quote[index];
}

void main() async {
  String randomQuote = await fetchRandomQuote();

  print('Random Quote: $randomQuote');
}
