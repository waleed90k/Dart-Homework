import 'dart:io';

void main() {
  stdout.write("أدخل رقم الشهر (1-12): ");
  int month = int.parse(stdin.readLineSync()!);

  switch (month) {
    case 1:
      print("يناير");
      break;
    case 2:
      print("فبراير");
      break;
    case 3:
      print("مارس");
      break;
    case 4:
      print("أبريل");
      break;
    case 5:
      print("مايو");
      break;
    case 6:
      print("يونيو");
      break;
    case 7:
      print("يوليو");
      break;
    case 8:
      print("أغسطس");
      break;
    case 9:
      print("سبتمبر");
      break;
    case 10:
      print("أكتوبر");
      break;
    case 11:
      print("نوفمبر");
      break;
    case 12:
      print("ديسمبر");
      break;
    default:
      print("رقم شهر غير صحيح");
  }
}
