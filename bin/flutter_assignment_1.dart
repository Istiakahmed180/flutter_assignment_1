import 'package:intl/intl.dart';

class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  drive(double miles) {
    milesDriven += miles;
  }

  getMilesDriven() {
    return milesDriven;
  }

  getBrand() {
    return brand;
  }

  getModel() {
    return model;
  }

  getYear() {
    return year;
  }

  getAge() {
    int currentYear = int.parse(DateFormat("yyyy").format(DateTime.now()));
    return currentYear - year;
  }
}

void main() {
  Car car1 = Car("Toyota", "Camry", 2015, 60000);
  Car car2 = Car("Honda", "Accord", 2018, 45000);
  Car car3 = Car("Ford", "F-150", 2020, 30000);

  car1.drive(1500);
  car2.drive(2500);
  car3.drive(1200);

  print(
      "Car 1: ${car1.getBrand()} (${car1.getYear()}) - Miles Driven: ${car1.getMilesDriven()}, Age: ${car1.getAge()} years");
  print(
      "Car 2: ${car2.getBrand()} (${car2.getYear()}) - Miles Driven: ${car2.getMilesDriven()}, Age: ${car2.getAge()} years");
  print(
      "Car 3: ${car3.getBrand()} (${car3.getYear()}) - Miles Driven: ${car3.getMilesDriven()}, Age: ${car3.getAge()} years");

  print("Total number of car objects created: ${Car.numberOfCars}");
}
