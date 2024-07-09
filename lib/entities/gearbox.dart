class Gearbox {
  int _gear = 0;

  int get gear => _gear;

  void updateGear(int acceleration) {
    if (acceleration < 0) {
      _gear = -1;
    } else if (acceleration == 0) {
      _gear = 0;
    } else if (acceleration <= 25) {
      _gear = 1;
    } else if (acceleration <= 50) {
      _gear = 2;
    } else if (acceleration <= 100) {
      _gear = 3;
    } else {
      _gear = 4;
    }
    print('Marcha atual: $_gear');
  }
}
