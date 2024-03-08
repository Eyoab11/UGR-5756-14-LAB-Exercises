import 'dart:io';

void readFile(String filePath) {
  try {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();

    print('File Content:');
    lines.forEach((line) => print(line));
  } catch (e) {
    if (e is FileSystemException) {
      if (e.osError?.errorCode == 2) {
        print('Error: File not found. Please check the file path.');
      } else {
        print('Error: Failed to read the file. ${e.message}');
      }
    } else {
      print('Unexpected error: $e');
    }
  }
}

void main() {
  String filePath = 'nonexistent_file.txt';
  readFile(filePath);
}
