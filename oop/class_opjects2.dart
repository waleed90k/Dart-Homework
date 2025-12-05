class Car {
  int _carID = 0;
  String _carName = "";
  String _carType = "";
  double _carPrice = 0.0;
  final double _discount = 0.15;
  double _totalPrice = 0.0;

  // Constructor
  Car(this._carID, this._carName, this._carType, this._carPrice) {
    _totalPrice = _carPrice - (_carPrice * _discount);
  }

  // Setters
  void setID(int id) => _carID = id;
  void setName(String name) => _carName = name;
  void setType(String type) => _carType = type;
  void setPrice(double price) {
    _carPrice = price;
    _totalPrice = _carPrice - (_carPrice * _discount);
  }

  // Getters
  int getID() => _carID;
  String getName() => _carName;
  String getType() => _carType;
  double getPrice() => _carPrice;
  double getDiscount() => _discount;
  double getTotalPrice() => _totalPrice;

  // Display car information
  void getCarInfo() {
    print("Car ID: $_carID");
    print("Car Name: $_carName");
    print("Car Type: $_carType");
    print("Car Price: $_carPrice");
    print("Discount: $_discount");
    print("Total Price: $_totalPrice");
  }
}

void main() {
  Car c1 = Car(101, "Toyota", "SUV", 15000);

  c1.getCarInfo();

  print("--------- After Editing ---------");

  c1.setPrice(20000);
  c1.setName("Camry");

  c1.getCarInfo();
}
