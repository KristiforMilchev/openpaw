import 'dart:async';

import 'package:core/infrastructure/ipage_router_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  GetIt getIt = GetIt.I;

  late IPageRouterService _routerService;

  final ScrollController _scrollController = ScrollController(
    keepScrollOffset: true,
    initialScrollOffset: 0.0,
  );
  get gridController => _scrollController;

  ready() {
    _routerService = getIt.get<IPageRouterService>();
    Timer(const Duration(seconds: 5), () {
      //scrollBottom();
    });
  }

  animalSelected() async {
    await _routerService.changePage("/animal-profile");
  }

  scrollTop() {
    _scrollController
        .animateTo(
          0,
          duration: const Duration(seconds: 20),
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
            duration: const Duration(seconds: 20),
            curve: Curves.linear,
          )
          .whenComplete(() => scrollTop());
    }
  }
}
