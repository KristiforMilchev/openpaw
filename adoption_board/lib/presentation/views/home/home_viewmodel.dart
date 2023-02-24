import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  ScrollController _scrollController = ScrollController(
    keepScrollOffset: true,
    initialScrollOffset: 0.0,
  );
  get gridController => _scrollController;

  ready() {
    Timer(Duration(seconds: 5), () {
      //scrollBottom();
    });
  }

  animalSelected() {}

  scrollTop() {
    _scrollController
        .animateTo(
          0,
          duration: Duration(seconds: 20),
          curve: Curves.linear,
        )
        .whenComplete(() => scrollBottom());
  }

  scrollBottom() {
    if (_scrollController.positions.isNotEmpty) {
      var cursor = _scrollController.position.maxScrollExtent;
      _scrollController
          .animateTo(
            cursor,
            duration: Duration(seconds: 20),
            curve: Curves.linear,
          )
          .whenComplete(() => scrollTop());
    }
  }
}
