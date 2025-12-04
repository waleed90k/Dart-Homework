import 'dart:io';

void main() {
  stdout.write("أدخل نوع الطلب: ");
  String food = stdin.readLineSync()!.toLowerCase();

  if (food == "بيتزا") {
    print("طلبك بيتزا");
  } else if (food == "برجر") {
    print("طلبك برجر");
  } else if (food == "شاورما") {
    print("طلبك شاورما");
  } else {
    print("نوع آخر من الطلبات");
  }
}
