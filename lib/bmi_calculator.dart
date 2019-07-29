import 'dart:math';
class BMICalculator{
  BMICalculator({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI(){
    _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25){
      return 'OverWeight';
    } else if (_bmi > 18.5){
      return 'Normal';
    }
    else {
      return 'UnderWeight';
    }
  }
  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have a higher than normal weight. Exercise karo Bro.';
    }
    else if (_bmi >= 18.5){
      return 'You have a normal body weight. Prefect Bro';
    }
    else{
      return 'You have a lower than normal body weight. Khana khao Bro.';
    }
  }
}