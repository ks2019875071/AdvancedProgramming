import 'dart:io';

void main() {
  while (true) {
    int? year = int.parse(stdin.readLineSync()!);

    if (year % 4 == 0 && year % 100 == 0 && year % 400 != 0) {
      print('This is leap year');
    }
    else {
      print('This is common year');
    }
  }
}