import 'dart:io';

class Car {
  String brand;
  int year;
  bool isElectric;
  double price;
  int passengerCapacity;

  // دالة البناء
  Car(this.brand, this.year, this.isElectric, this.price, this.passengerCapacity);

  // هل السيارة كهربائية؟
  String checkElectric() {
    return isElectric ? "السيارة كهربائية" : "السيارة تقليدية";
  }

  // فحص سنة الإصدار
  String checkYear() {
    if (year >= 1980 && year <= 2025) {
      return "سنة الإصدار صحيحة";
    } else {
      return "سنة الإصدار خارج النطاق";
    }
  }

  // حساب تكلفة الصيانة (10% من السعر)
  double calculateMaintenanceCost() {
    return price * 0.10;
  }

  // طباعة بيانات السيارة
  void getCarInfo() {
    print("----- بيانات السيارة -----");
    print("العلامة التجارية: $brand");
    print("سنة الإصدار: $year");
    print("نوع السيارة: ${checkElectric()}");
    print("السعر: \$${price}");
    print("عدد الركاب: $passengerCapacity");
    print("تكلفة الصيانة: \$${calculateMaintenanceCost()}");
    print("--------------------------");
  }
}

void main() {
  // الكائن الأول: قيم مباشرة
  Car car1 = Car("Toyota", 2020, false, 15000, 5);
  car1.getCarInfo();

  // الكائن الثاني: قيم من المستخدم
  print("\nأدخل بيانات السيارة الثانية:");

  stdout.write("العلامة التجارية: ");
  String brand = stdin.readLineSync()!;

  stdout.write("سنة الإصدار: ");
  int year = int.parse(stdin.readLineSync()!);

  stdout.write("هل كهربائية؟ (yes/no): ");
  String electricInput = stdin.readLineSync()!;
  bool isElectric = electricInput.toLowerCase() == "yes";

  stdout.write("السعر: ");
  double price = double.parse(stdin.readLineSync()!);

  stdout.write("عدد الركاب: ");
  int capacity = int.parse(stdin.readLineSync()!);

  Car car2 = Car(brand, year, isElectric, price, capacity);
  car2.getCarInfo();
}
