import 'dart:io';

void main() {
  stdout.write("أدخل المستوى التعليمي (ثانوي - بكالوريوس - ماجستير - دكتوراه): ");
  String level = stdin.readLineSync()!.toLowerCase();

  switch (level) {
    case "ثانوي":
      print("المستوى: ثانوي");
      break;
    case "بكالوريوس":
      print("المستوى: بكالوريوس");
      break;
    case "ماجستير":
      print("المستوى: ماجستير");
      break;
    case "دكتوراه":
      print("المستوى: دكتوراه");
      break;
    default:
      print("مستوى غير معروف");
  }
}
