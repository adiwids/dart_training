class Vehicle {
  String fuelType = "";
  int speed = 0;

  Vehicle(this.fuelType, this.speed) {}

  String getDescription() {
    return this.runtimeType.toString() +
           " is using " +
           this.fuelType +
           " to run at most " +
           this.speed.toString() +
           " km/h";
  }

  void describe() {
    print(this.getDescription());
  }
}

