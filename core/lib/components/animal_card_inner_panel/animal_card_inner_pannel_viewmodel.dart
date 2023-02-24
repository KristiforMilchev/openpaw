import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AnimalCardInnerPanelviewModel extends BaseViewModel {
  late BuildContext _context;

  ready(BuildContext context) {
    _context = context;
  }

  openDetails() {}

  getMedicalFlex() {
    var width = MediaQuery.of(_context).size.width;
    if (width <= 1920) {
      return 2;
    }

    return 6;
  }

  getInformationFlex() {
    var width = MediaQuery.of(_context).size.width;
    if (width <= 1920) {
      return 2;
    }

    return 3;
  }

  double getInnerPadding() {
    var width = MediaQuery.of(_context).size.width;
    if (width <= 1920) {
      return 15;
    }

    return 45;
  }

  getMedicalPanelWidth() {
    var width = MediaQuery.of(_context).size.width;
    if (width <= 1920) {
      return 180.0;
    }

    return 500.0;
  }

  double getMedicalBoxPadding() {
    var width = MediaQuery.of(_context).size.width;
    if (width <= 1920) {
      return 2;
    }

    return 5;
  }

  getFontSize() {
    var width = MediaQuery.of(_context).size.width;
    if (width <= 1920) {
      return 12.0;
    }

    return 14.0;
  }

  getHeadingFontSize() {
    var width = MediaQuery.of(_context).size.width;
    if (width <= 1920) {
      return 20.0;
    }

    return 16.0;
  }

  getBoxWidth() {
    var width = MediaQuery.of(_context).size.width;
    if (width <= 1920) {
      return 120.0;
    }

    return 420.0;
  }
}
