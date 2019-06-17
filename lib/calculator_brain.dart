import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  //bmi must be calculated first before getting results and interpretation. So order matters
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your BMI is high. You need to cut your food intake and exercise more!';
    } else if (_bmi >= 18.5) {
      return 'Your BMI is normal. Kudos!';
    } else {
      return 'Your BMI is quiet low! You should eat more!';
    }
  }
}
