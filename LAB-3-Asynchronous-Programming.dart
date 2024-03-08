import 'dart:async';

void main() {
  print('Simulating loading data from a database\n');

  fetchData().then((data) {
    print('Data loaded successfully:');
    data.forEach((item) => print(item));
  }).catchError((error) {
    print('Error loading data: $error');
  });
}

Future<List<String>> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  List<String> dataList = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  return dataList;
}
