// ignore_for_file: unnecessary_this

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../domain/Assets/styles.dart';
import '../../infrastructure/ipage_router_service.dart';
import '../app_router_viewmodel.dart';
import '../router.gr.dart';

class PageRouterService implements IPageRouterService {
  @override
  late AppRouter router;

  @override
  late AppRouteViewModel model;
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
    await router.navigateNamed(name);
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
  void registerRouter(AppRouter currentRouter, AppRouteViewModel currentModel,
      MaterialApp app) {
    this.router = currentRouter;
    this.model = currentModel;
    this.appView = app;
  }

  @override
  void setPageIndex(int index) {
    currentIndex = index;
  }

  @override
  void initActionDialog(Widget render, FlushbarPosition position, Color color,
      double border, BorderRadius radius, BuildContext context, String id) {
    model.actionDilog(render, position, color, border, radius, context, id);
  }

  @override
  void dismissActionDialog(String id) {
    model.dismissActionDialog(id);
  }

  @override
  void setCallbackResult(Object current) {
    callbackResult = current;
  }

  @override
  void printErrorMessage(String message, BuildContext context, int timeout) {
    initActionDialog(
        Text(
          message,
          style: TextStyle(
            color: ThemeColors.mainText,
          ),
          textAlign: TextAlign.center,
        ),
        FlushbarPosition.TOP,
        ThemeColors.mainThemeBackground,
        1,
        const BorderRadius.only(
            topLeft: Radius.circular(0), topRight: Radius.circular(0)),
        context,
        "errorBox");
    Future.delayed(Duration(seconds: timeout))
        .then((value) => dismissActionDialog("errorBox"));
  }
}
