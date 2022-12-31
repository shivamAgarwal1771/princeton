
import 'package:flutter/material.dart';

class AppConstants {
  double height = 0;
  double width = 0;
  double aspectRatio = 0;
  double _heightCalculator(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return height;
  }

  double _widthCalculator(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return width;
  }

  _calculateAspectRatio(double width, double height) => height / width;

  static final AppConstants _instance = AppConstants._internal();
  factory AppConstants() {
    return _instance;
  }
  AppConstants._internal();

  void calculateSize(BuildContext context) {
    aspectRatio = _calculateAspectRatio(
        _widthCalculator(context), _heightCalculator(context));
  }
}

  // Font Sizes
double V_LARGE_FONT_SIZE = AppConstants().height * 0.033; //28
double LARGE_FONT_SIZE = AppConstants().height * 0.0236; //20
double MED_FONT_SIZE_2 = AppConstants().height * 0.021; //18
double MED_FONT_SIZE = AppConstants().height * 0.019; //16
double REGULAR_FONT_SIZE = AppConstants().height * 0.016; //14
double DEFAULT_FONT_SIZE = AppConstants().height * 0.014; //12
double SMALL_FONT_SIZE = AppConstants().height * 0.0118; //10


  //MediaQuery.of(context).size.height*0.029
