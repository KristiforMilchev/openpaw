import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TagListViewModel extends BaseViewModel {
  late BuildContext _context;

  ready(BuildContext context) {
    _context = context;
  }

  getFontSize() {
    var width = MediaQuery.of(_context).size.width;
    if (width <= 1920) {
      return 12.0;
    }

    return 14.0;
  }
}
