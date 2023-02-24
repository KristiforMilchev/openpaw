import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../domain/models/app_router.dart';

abstract class IPageRouterService {
  late CoreRouter router;
  late MaterialApp appView;
  late int currentIndex;
  late Object? callbackResult;

  void registerRouter(CoreRouter router, MaterialApp app);
  Future<bool> changePage(String name);
  void setPageIndex(int index);
  void backToPrevious(BuildContext context, dynamic result);

  void setCallbackResult(Object current);
}
