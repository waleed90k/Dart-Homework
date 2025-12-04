import 'dart:io';

void main() {
  stdout.write("أدخل حالة الطقس (مشمس - ممطر - غائم): ");
  String weather = stdin.readLineSync()!.toLowerCase();

  switch (weather) {
    case "مشمس":
      print("الطقس مشمس");
      break;
    case "ممطر":
      print("الطقس ممطر");
      break;
    case "غائم":
      print("الطقس غائم");
      break;
    default:
      print("حالة الطقس غير معروفة");
  }
}
