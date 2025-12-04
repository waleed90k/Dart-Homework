import 'dart:io';

void main() {
  // 1. قراءة مبلغ الشراء
  stdout.write("أدخل مبلغ الشراء: ");
  double purchaseAmount = double.parse(stdin.readLineSync()!);

  double discount = 0;

  // 2. احتساب قيمة الخصم
  if (purchaseAmount > 20000) {
    discount = purchaseAmount * 0.12; // 12% خصم
  } else if (purchaseAmount >= 10000) {
    discount = purchaseAmount * 0.07; // 7% خصم
  } // أقل من 10000 لا يوجد خصم

  // حساب الصافي بعد الخصم
  double netAmount = purchaseAmount - discount;

  // 3. طباعة النتائج
  print("مبلغ المشتريات: $purchaseAmount");
  print("قيمة الخصم: $discount");
  print("الصافي بعد الخصم: $netAmount");
}
