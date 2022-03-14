import 'dart:math';

class BMICalculator {
  BMICalculator({required this.height, required this.weight});
  final int height;
  final int weight;
  late double _bmi;

  String getBmiResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiInterpitation() {
    if (_bmi >= 25) {
      return 'ከመጠን በላይ ክብደት';
    } else if (_bmi > 18.5) {
      return 'የተለመደ';
    } else {
      return 'ዝቅተኛ ክብደት';
    }
  }

  String bmiSuggestion() {
    if (_bmi >= 25) {
      return 'የአካል ብቃት እንቅስቃሴ አድርግ ከክብደት በላይ ነህ!!';
    } else if (_bmi > 18.5) {
      return 'በጣም መደበኛ ነዎት ጤናዎን ይጠብቁ';
    } else {
      return 'ከክብደት በታች ነዎት ትንሽ ክብደት ያግኙ ምግብ ይብሉ!!!!!';
    }
  }
}
