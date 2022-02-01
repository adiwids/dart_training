@TestOn("vm")
import "package:test/test.dart";
import "../lib/Vehicle.dart";

void main() {
  test("Constructor receives speed and fuel type argument", () {
    Vehicle vehicle = Vehicle("Petrol", 100);
    expect(vehicle.fuelType, equals("Petrol"));
    expect(vehicle.speed, equals(100));
  });

  test("#getDescription() returns description text containing fuel type and speed", () {
    Vehicle vehicle = Vehicle("Petrol", 100);
    expect(vehicle.getDescription(), equals("Vehicle is using Petrol to run at most 100 km/h"));
  });

  test("#describe() print description text", () {
    Vehicle vehicle = Vehicle("Petrol", 100);
    expect(() => vehicle.describe(), returnsNormally);
  });
}
