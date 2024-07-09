class Tire {
  final int _width;
  final int _radius;
  int _rotations = 0;

  Tire(this._width, this._radius);

  void updateRotations(int rotations) {
    _rotations = rotations;
    print('Pneu: $_rotations rpm');
  }

  int size() {
    return (_width * _radius) ~/ 10;
  }
}
