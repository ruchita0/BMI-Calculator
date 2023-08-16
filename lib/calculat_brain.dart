import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  late double _bmi;
  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi > 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getinterpretation() {
    if (_bmi > 25) {
      return 'you have a higher than normal body weight.try to excercise more';
    } else if (_bmi > 18.5) {
      return 'you have normal weight . Good job!';
    } else {
      return 'you have a lower than normal body weight.you can eat bit more';
    }
  }
}
