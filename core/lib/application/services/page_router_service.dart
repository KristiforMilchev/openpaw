// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

import '../../domain/models/app_router.dart';
import '../../infrastructure/ipage_router_service.dart';

class PageRouterService implements IPageRouterService {
  @override
  late CoreRouter router;

  @override
  late MaterialApp appView;

  @override
  late int currentIndex = 0;

  @override
  late Object? callbackResult;

  @override
  backToPrevious(BuildContext context, dynamic result) {
    Navigator.pop(context, result);
  }

  @override
  Future<bool> changePage(String name) async {
    await router.replaceNamed(name);
    return true;
  }

  @override
  popDialog(BuildContext context, dynamic dialogContent) async {
    final result = await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => dialogContent,
    ));

    return result;
  }

  @override
  void registerRouter(CoreRouter currentRouter, MaterialApp app) {
    this.router = currentRouter;
    this.appView = app;
  }

  @override
  void setPageIndex(int index) {
    currentIndex = index;
  }

  @override
  void setCallbackResult(Object current) {
    callbackResult = current;
  }
}
