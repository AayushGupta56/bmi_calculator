import 'dart:math';

class CalculateBrain {
  CalculateBrain({required this.hieght, required this.weight});
  final int hieght;
  final int weight;
  double _bmi = 20;
  String CalculateBMI() {
    _bmi = weight / pow(hieght / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return "overweight";
    }
    if (_bmi >= 18) {
      return "fit";
    } else {
      return "underweight";
    }
  }

  String getinterpretation() {
    if (_bmi >= 25) {
      return "go to gym";
    }
    if (_bmi >= 18) {
      return "go to kfc";
    } else {
      return "go eat some food";
    }
  }
}
