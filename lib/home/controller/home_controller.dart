import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';

class HomePageController with ChangeNotifier {
  int counter = 0;

  var countdown = 60;
  Timer? _timer;
  int index = 0;

  bool get isActive => _timer?.isActive ?? false;

  void startCountdown() {
    index++;
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (countdown == 0) {
          _timer?.cancel();
          notifyListeners();
          return;
        }
        countdown--;
        notifyListeners();
      },
    );
  }

  void stop() {
    index = 0;
    _timer?.cancel();
    notifyListeners();
  }

  void resetTime() {
    countdown = 60;
    _timer?.cancel();
    notifyListeners();
  }

  void incrementCounter() {
    counter++;
    notifyListeners();
    log(counter.toString());
  }

  void decrementCounter() {
    counter--;
    notifyListeners();
    log(counter.toString());
  }
}
