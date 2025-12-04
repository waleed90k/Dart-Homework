import 'dart:io';

void main() {
  // 1) قراءة اسم الطالب ودرجات 3 مواد
  stdout.write("أدخل اسم الطالب: ");
  String studentName = stdin.readLineSync()!;

  stdout.write("أدخل درجة المادة الأولى: ");
  double m1 = double.parse(stdin.readLineSync()!);

  stdout.write("أدخل درجة المادة الثانية: ");
  double m2 = double.parse(stdin.readLineSync()!);

  stdout.write("أدخل درجة المادة الثالثة: ");
  double m3 = double.parse(stdin.readLineSync()!);

  // 2) حساب مجموع المواد ومتوسط الدرجات
  double total = m1 + m2 + m3;
  double average = total / 3;

  // 3) تحديد نتيجة الطالب
  // شرط النجاح: كل مادة ≥ 50
  String result;
  if (m1 >= 50 && m2 >= 50 && m3 >= 50) {
    result = "ناجح";
  } else {
    result = "راسب";
  }

  // 4) طباعة التقرير
  print("\n----------- تقرير نتيجة الطالب -----------");
  print("اسم الطالب: $studentName");
  print("مجموع الدرجات: $total");
  print("متوسط الدرجات: $average");
  print("النتيجة: $result");
  print("-------------------------------------------");
}
