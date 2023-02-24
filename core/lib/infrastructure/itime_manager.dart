import 'dart:async';

abstract class ITimeManager {
  Duration? myDuration;
  Timer? countdownTimer;

  late String? _seconds;
  late String? _minutes;
  late int _incrementBy;

  String? get seconds => _seconds;
  String? get minutes => _minutes;
  int get incrementBy => _incrementBy;

  void startTimer();
  void setTimer(int minutes, int increment, Function timerExpired);
  void stopTimer();
}
