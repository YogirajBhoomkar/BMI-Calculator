import 'dart:math';

class ComputerBrain {
  ComputerBrain(this.height, this.weight);
  final int height;
  final int weight;
  double _bmi = 0;
  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) return 'Overweight';
    if (_bmi >= 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'You have a higher than normal body weight. Try to exersize more. ';
    if (_bmi >= 18)
      return 'You have Normal body weight. Good job well done !';
    else
      return 'You have a lower Normal body weight. You can eat bit more';
  }
}
