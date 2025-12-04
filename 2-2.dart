import 'dart:io';

void main() {
  // 1. قراءة المبلغ المالي
  stdout.write("أدخل المبلغ المالي: ");
  double amount = double.parse(stdin.readLineSync()!);

  // 2. قراءة عدد الأشهر
  stdout.write("أدخل عدد الأشهر: ");
  int months = int.parse(stdin.readLineSync()!);

  // 3. التحقق من الشروط
  if (amount >= 955000 && months >= 12) {
    double zakah = amount * 0.025; // 2.5% من المبلغ
    double remaining = amount - zakah;

    // 4. طباعة قيمة الزكاة والمبلغ المتبقي
    print("قيمة الزكاة المستحقة: $zakah");
    print("المبلغ المتبقي بعد الزكاة: $remaining");
  } else {
    print("Zakah No.");
  }
}
