import 'dart:io';

void main() {
  // 1. قراءة الراتب الأساسي
  stdout.write("أدخل الراتب الأساسي: ");
  double basicSalary = double.parse(stdin.readLineSync()!);

  // 2. قراءة عدد ساعات العمل الإضافية خلال الشهر
  stdout.write("أدخل عدد ساعات العمل الإضافية: ");
  int extraHours = int.parse(stdin.readLineSync()!);

  // 3. حساب أجر الساعة الواحدة (2.1% من الراتب)
  double hourlyRate = basicSalary * 0.021;

  // 4. حساب قيمة الساعات الإضافية
  double extraPay = hourlyRate * extraHours;

  // 5. حساب صافي الراتب
  double netSalary = basicSalary + extraPay;

  // 6. طباعة النتائج
  print("أجر الساعة الواحدة: $hourlyRate");
  print("صافي الراتب بعد إضافة الساعات الإضافية: $netSalary");
}
