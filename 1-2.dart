import 'dart:io';

void main() {
  stdout.write("أدخل العمر: ");
  int age = int.parse(stdin.readLineSync()!);

  if (age > 18) {
    print("أكبر من 18");
  } else {
    print("أصغر أو يساوي 18");
  }
}
