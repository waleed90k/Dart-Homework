import 'dart:io';

void main() {
  stdout.write("أدخل الرقم الأول: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("أدخل الرقم الثاني: ");
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write("أدخل العملية (+, -, *, /): ");
  String op = stdin.readLineSync()!;

  switch (op) {
    case "+":
      print("الناتج: ${num1 + num2}");
      break;
    case "-":
      print("الناتج: ${num1 - num2}");
      break;
    case "*":
      print("الناتج: ${num1 * num2}");
      break;
    case "/":
      if (num2 != 0) {
        print("الناتج: ${num1 / num2}");
      } else {
        print("لا يمكن القسمة على صفر");
      }
      break;
    default:
      print("عملية غير صحيحة");
  }
}
