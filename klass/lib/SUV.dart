import "./Car.dart";

class SUV extends Car {
  SUV(String fuelType, int speed) : super(fuelType, speed);

  @override
  String getDescription() {
    return "The " + this.runtimeType.toString() + " car " +
           "requires " + this.fuelType +
	   " to run at most " + this.speed.toString() +
           " km/h";
  }
}
