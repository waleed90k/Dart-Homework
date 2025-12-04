import 'dart:io';

void main() {
  String correctPassword = "12345"; // ضع كلمة المرور الصحيحة هنا

  stdout.write("أدخل كلمة المرور: ");
  String userPassword = stdin.readLineSync()!;

  if (userPassword == correctPassword) {
    print("كلمة المرور صحيحة");
  } else {
    print("كلمة المرور خاطئة");
  }
}
