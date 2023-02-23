import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../../infrastructure/itime_manager.dart';

class TimerManager implements ITimeManager {
  @override
  Timer? countdownTimer;

  @override
  Duration? myDuration;

  @override
  int _incrmenetBy = 0;

  late int? _remainingMinutes;
  late String? _seconds = "--";
  late String? _minutes = "--";
  late Function _timerExpired;

  @override
  String? get minutes => _minutes;

  @override
  String? get seconds => _seconds;

  @override
  int get incrementBy => _incrmenetBy;

  String strDigits(int n) => n.toString().padLeft(2, '0');

  @override
  void startTimer() {
    final secondsPassed = myDuration!.inSeconds;
    myDuration = Duration(seconds: secondsPassed + _incrmenetBy);

    countdownTimer = Timer.periodic(
      Duration(seconds: 1),
      (_) => setCountDown(),
    );
  }

  @override
  void stopTimer() {
    if (countdownTimer != null) {
      countdownTimer!.cancel();
    }
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    final secondsPassed = myDuration!.inSeconds - reduceSecondsBy;
    if (secondsPassed < 0) {
      countdownTimer!.cancel();
      _timerExpired.call();
    } else {
      myDuration = Duration(seconds: secondsPassed);

      _minutes = strDigits(myDuration!.inMinutes.remainder(60));
      _seconds = strDigits(myDuration!.inSeconds.remainder(60));
    }
  }

  @override
  void setTimer(int minutes, int increment, Function timerExpired) {
    _timerExpired = timerExpired;
    myDuration = Duration(minutes: minutes);
    _incrmenetBy = increment;
  }
}
