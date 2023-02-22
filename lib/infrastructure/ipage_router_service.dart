import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../application/app_router_viewmodel.dart';
import '../application/router.gr.dart';

abstract class IPageRouterService {
  late AppRouter router;
  late AppRouteViewModel model;
  late MaterialApp appView;
  late int currentIndex;
  late Object? callbackResult;

  void registerRouter(
      AppRouter router, AppRouteViewModel currentModel, MaterialApp app);
  Future<bool> changePage(String name);
  void setPageIndex(int index);
  dynamic popDialog(BuildContext context, dynamic dialogContent);
  void backToPrevious(BuildContext context, dynamic result);
  void initActionDialog(Widget render, FlushbarPosition position, Color color,
      double border, BorderRadius radius, BuildContext context, String id);
  void dismissActionDialog(String id);
  void setCallbackResult(Object current);
  void printErrorMessage(String message, BuildContext context, int timeout);
}
