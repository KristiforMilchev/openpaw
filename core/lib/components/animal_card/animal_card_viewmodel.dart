import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AnimalCardViewModel extends BaseViewModel {
  late BuildContext? _context;

  bool _isOpen = false;
  get isOpen => _isOpen;
  ready(BuildContext context) {
    _context = context;
  }

  cardState() {
    _isOpen = !_isOpen;
    notifyListeners();
  }

  openDetails() {}

  getBoxWidth() {
    var width = MediaQuery.of(_context!).size.width;
    if (width <= 1920) {
      return 300.0;
    }

    return 700.0;
  }

  getFontSize() {
    var width = MediaQuery.of(_context!).size.width;
    if (width <= 1920) {
      return 12.0;
    }

    return 14.0;
  }

  getImageWidth() {
    var width = MediaQuery.of(_context!).size.width;
    if (width <= 1920) {
      return 80.0;
    }

    return 100.0;
  }

  getMaxLines() {
    var width = MediaQuery.of(_context!).size.width;
    if (width <= 1920) {
      return 4;
    }

    return 8;
  }
}
