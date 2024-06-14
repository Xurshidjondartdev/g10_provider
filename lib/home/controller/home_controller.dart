import 'package:flutter/material.dart';

class HomePageController with ChangeNotifier {
  int time = 60;

  void setTime() {
    time--;
    notifyListeners();
  }

  void reset() {
    time = 60;
    notifyListeners();
  }

  void stopTime() {
    time = 0;
    notifyListeners();
  }
}
