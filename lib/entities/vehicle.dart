import 'package:car/entities/engine.dart';
import 'package:car/entities/tire.dart';

abstract class Vehicle {
  final Engine _engine;
  final List<Tire> _tires;

  Vehicle(this._engine, this._tires);

  int get currentSpeed => _engine.acceleration;
  int get currentGear => _engine.gear;

  void turnOn() {
    _engine.turnOn();
  }

  void turnOff() {
    _engine.turnOff();
  }

  bool get isOn => _engine.state;

  void speedUp() {
    _engine.speedUp();
    if (isOn) {
      _updateTireRotations();
    }
  }

  void speedDown() {
    _engine.speedDown();
    if (isOn) {
      _updateTireRotations();
    }
  }

  void _updateTireRotations() {
    for (var tire in _tires) {
      tire.updateRotations(
          (_engine.strength * _engine.gear * 200) ~/ tire.size());
    }
  }
}
