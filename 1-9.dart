import 'dart:io';

void main() {
  stdout.write("أدخل رقم الشهر (1-12): ");
  int month = int.parse(stdin.readLineSync()!);

  switch (month) {
    case 12:
    case 1:
    case 2:
      print("الفصل: شتاء");
      break;
    case 3:
    case 4:
    case 5:
      print("الفصل: ربيع");
      break;
    case 6:
    case 7:
    case 8:
      print("الفصل: صيف");
      break;
    case 9:
    case 10:
    case 11:
      print("الفصل: خريف");
      break;
    default:
      print("شهر غير صحيح");
  }
}
