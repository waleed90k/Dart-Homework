import 'dart:io';

void main() {
  stdout.write("أدخل الرقم: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("الرقم زوجي");
  } else {
    print("الرقم فردي");
  }
}
