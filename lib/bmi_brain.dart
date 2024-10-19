import 'dart:math';

import 'input_page.dart';

// int heightMeter = (height.toInt() / 3.28).toInt();
// int eight = (heightMeter * heightMeter).toInt();
// int result = (weight / eight).toInt();

class BmiBrain {
  BmiBrain({required this.height, required this.weight});
  final double height;
  final int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getResultdescription() {
    if (_bmi >= 25) {
      return 'images/fat.png';
    } else if (_bmi >= 18.5) {
      return 'images/muscular.jpg';
    } else {
      return 'images/skinny.jpg.webp';
    }
  }
}
