@TestOn("vm")
import "package:test/test.dart";
import "../lib/Car.dart";
import "../lib/SUV.dart";

void main() {
  test("Inherit Car class", () {
    SUV suv = SUV("Petrol", 100);
    expect(suv, new isInstanceOf<Car>());
    expect(suv.fuelType, equals("Petrol"));
    expect(suv.speed, equals(100));
  });

  test("#getDescription() returns description text containing fuel type and speed", () {
    SUV suv = SUV("Petrol", 100);
    expect(suv.getDescription(), equals("The SUV car requires Petrol to run at most 100 km/h"));
  });

  test("#describe() print description text", () {
    SUV suv = SUV("Petrol", 100);
    expect(() => suv.describe(), returnsNormally);
  });
}
