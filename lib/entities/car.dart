import 'package:project_car/entities/vehicle.dart';

class Car extends Vehicle {
  final String model;
  final String color;

  Car(super._engine, super._tires, {required this.model, required this.color});

  @override
  void turnOff() {
    if (currentSpeed > 0) {
      super.speedDown();
      turnOff();
    } else if (currentSpeed < 0) {
      super.speedUp();
      turnOff();
    } else {
      super.turnOff();
    }
  }
}
