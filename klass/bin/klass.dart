import "../lib/Car.dart";
import "../lib/SUV.dart";

void main() {
  print("Hello world!");
  SUV suv = SUV("Diesel", 140);
  suv.describe();
  Car car = Car("Petrol", 100);
  car.describe();
}

