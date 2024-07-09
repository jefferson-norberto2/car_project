import 'package:project_car/entities/engine.dart';
import 'package:project_car/entities/tire.dart';

abstract class Vehicle {
  final Engine _engine;
  final List<Tire> _tires;

  Vehicle(this._engine, this._tires);

  void turnOn() {
    _engine.turnOn();
  }

  void turnOff() {
    _engine.turnOff();
  }

  void speedUp() {
    _engine.speedUp();
    if (_engine.state) {
      _updateTireRotations();
    }
  }

  void speedDown() {
    _engine.speedDown();
    if (_engine.state) {
      _updateTireRotations();
    }
  }

  void _updateTireRotations() {
    for (var tire in _tires) {
      tire.updateRotations(
          (_engine.strength * _engine.gear * 200) ~/ tire.size());
    }
  }

  int get currentSpeed => _engine.acceleration;
  int get currentGear => _engine.gear;
}
