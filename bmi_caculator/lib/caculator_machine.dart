import 'dart:math';

class CaculatorMachine {
  CaculatorMachine({this.height, this.weight});
  final int? height;
  final int? weight;

  double? _bmi;

  String caculatorBMI() {
    _bmi = weight! / pow((height! / 100), 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! > 25) {
      return '過重';
    } else if (_bmi! > 18) {
      return '正常';
    } else {
      return '過輕';
    }
  }

  String getBMIdescritpion() {
    if (_bmi! > 25) {
      return '你比正常體重還高，建議你多運動哦!';
    } else if (_bmi! > 18) {
      return '你的體重正常，繼續保持下去啊';
    } else {
      return '你比正常體重還輕，建議你多吃點哦!';
    }
  }
}
