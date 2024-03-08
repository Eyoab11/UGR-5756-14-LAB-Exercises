void main() {
  List<String> favoriteHobbies = ['Reading', 'Gaming', 'Watching Movies', 'Listening to music'];

  print('My Hobbies: $favoriteHobbies');

  favoriteHobbies.add('Coding');
  print('New hobby "Coding": $favoriteHobbies');

  favoriteHobbies.remove('Listening to music');
  print('Left out hobby "Listening to music" : $favoriteHobbies');

  favoriteHobbies.sort();
  print('Sorted: $favoriteHobbies');

  bool isListEmpty = favoriteHobbies.isEmpty;
  print('Is this List Empty? $isListEmpty');

  favoriteHobbies.clear();
  print('Cleared : $favoriteHobbies');
}
