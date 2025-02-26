import 'dart:async';
import 'package:flutter/material.dart';

class TimerProvider with ChangeNotifier {
  int _secondsRemaining;
  late Timer _timer;

  TimerProvider(this._secondsRemaining);

  int get secondsRemaining => _secondsRemaining;

  bool get isRunning => _secondsRemaining > 0;

  void startTimer(VoidCallback onTimerEnd) {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        _secondsRemaining--;
        notifyListeners();
      } else {
        _timer.cancel();
        onTimerEnd(); // Выполнить действие, когда таймер завершится
      }
    });
  }

  void stopTimer() {
    _timer.cancel();
    notifyListeners();
  }

  void resetTimer(int newDuration) {
    _secondsRemaining = newDuration;
    notifyListeners();
  }
}
