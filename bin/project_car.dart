import 'package:project_car/entities/car.dart';
import 'package:project_car/entities/engine.dart';
import 'package:project_car/entities/gearbox.dart';
import 'package:project_car/entities/tire.dart';

void main(List<String> arguments) {
  Gearbox gearbox = Gearbox();
  Engine engine = Engine(200, gearbox);

  Car car = Car(
      engine, [Tire(205, 55), Tire(205, 55), Tire(205, 55), Tire(205, 55)],
      model: 'Fusca', color: 'Branco');

  car.speedUp();
  car.turnOn();
  car.speedUp();
  car.speedUp();
  car.speedUp();
  car.speedDown();
  car.turnOff();
}
