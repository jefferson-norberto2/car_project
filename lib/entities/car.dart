import 'package:car/entities/vehicle.dart';

class Car extends Vehicle {
  final String model;
  final String color;

  Car(super.engine, super.tires, {required this.model, required this.color});

  @override
  void turnOff() {
    if (super.currentSpeed > 0) {
      super.speedDown();
      turnOff();
    } else if (super.currentSpeed < 0) {
      super.speedUp();
      turnOff();
    } else {
      super.turnOff();
    }
  }
}
