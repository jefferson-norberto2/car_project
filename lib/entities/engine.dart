import 'package:car/entities/gearbox.dart';

class Engine {
  final int _power;
  final Gearbox _gearbox;

  Engine(this._power, this._gearbox);

  bool _isOn = false;
  int _acceleration = 0;

  void turnOn() {
    if (_isOn) {
      print('Atenção: Motor já estava ligado!');
    } else {
      _isOn = true;
      print('Motor ligado com sucesso.');
    }
  }

  void turnOff() {
    if (_isOn) {
      _isOn = false;
      print('Motor desligado com sucesso!');
    } else {
      print('Atenção: Motor já estava desligado!');
    }
  }

  void speedUp() {
    if (_isOn) {
      if (acceleration < 150) {
        _acceleration += 25;
        _gearbox.updateGear(_acceleration);
        print('Motor: $_acceleration rpm');
      } else {
        print('Atenção: Aceleração máxima atingida!');
      }
    } else {
      print('Atenção: Motor não está ligado!');
    }
  }

  void speedDown() {
    if (_isOn) {
      if (acceleration > -50) {
        _acceleration -= 25;
        _gearbox.updateGear(_acceleration);
        print('Motor: $_acceleration rpm');
      } else {
        print('Atenção: Aceleração máxima ré atingida!');
      }
    } else {
      print('Atenção: Motor não está ligado!');
    }
  }

  int get strength => _power * _acceleration;
  int get acceleration => _acceleration;
  bool get state => _isOn;
  int get gear => _gearbox.gear;
}
