import 'package:car/entities/car.dart';
import 'package:car/entities/engine.dart';
import 'package:car/entities/gearbox.dart';
import 'package:car/entities/tire.dart';
import 'package:test/test.dart';

void main() {
  group('Car functions - ', () {
    late Car car;
    setUp(
      () {
        Gearbox gearbox = Gearbox();
        Engine engine = Engine(200, gearbox);
        List<Tire> tires = List.generate(4, (index) => Tire(205, 55));

        car = Car(engine, tires, model: 'Fusca', color: 'Branco');
      },
    );

    test('Model', () {
      expect(car.model.toLowerCase(), equals('fusca'));
    });

    test('Color', () {
      expect(car.color.toLowerCase(), equals('branco'));
    });

    test('Speed up turned off', () {
      car.speedUp();
      expect(car.currentGear, 0);
      expect(car.currentSpeed, 0);
    });

    test('Speed up turning on', () {
      car.turnOn();
      car.speedUp();
      car.speedUp();
      expect(car.isOn, true);
      expect(car.currentGear, 2);
      expect(car.currentSpeed, 50);
    });

    test('Max foward speed', () {
      car.turnOn();
      car.speedUp();
      car.speedUp();
      car.speedUp();
      car.speedUp();
      car.speedUp();
      car.speedUp();
      car.speedUp();
      car.speedUp();
      car.speedUp();
      car.speedUp();
      car.speedUp();

      expect(car.currentGear, 4);
      expect(car.currentSpeed, 150);
    });

    test('Max backward speed', () {
      car.turnOn();
      car.speedDown();
      car.speedDown();
      car.speedDown();
      expect(car.currentGear, -1);
      expect(car.currentSpeed, -50);
    });

    test('Turn off on moving', () {
      car.turnOn();
      car.speedUp();
      car.speedUp();
      car.speedUp();
      car.speedDown();
      car.turnOff();

      expect(car.currentGear, 0);
      expect(car.currentSpeed, 0);
    });

    test('Turn on/off', () {
      car.turnOn();
      expect(car.isOn, true);

      car.turnOff();
      expect(car.isOn, false);
    });
  });
}
