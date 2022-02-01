@TestOn("vm")
import "package:test/test.dart";
import "../lib/Car.dart";
import "../lib/Vehicle.dart";

void main() {
  test("Inherit Vehicle class", () {
    Car car = Car("Petrol", 100);
    expect(car, new isInstanceOf<Vehicle>());
    expect(car.fuelType, equals("Petrol"));
    expect(car.speed, equals(100));
  });

  test("#getDescription() returns description text containing fuel type and speed", () {
    Car car = Car("Petrol", 100);
    expect(car.getDescription(), equals("Car is using Petrol to run at most 100 km/h"));
  });

  test("#describe() print description text", () {
    Car car = Car("Petrol", 100);
    expect(() => car.describe(), returnsNormally);
  });
}
