import 'package:adoption_board/application/router.gr.dart';
import 'package:another_flushbar/flushbar.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:stacked/stacked.dart';

import '../infrastructure/ipage_router_service.dart';

class AppRouteViewModel extends BaseViewModel {
  GetIt getIt = GetIt.instance;
  late IPageRouterService routerService;
  late MaterialApp _app;

  bool _isConfigured = true;
  bool get isConfigured => _isConfigured;
  MaterialApp get app => _app;
  late List<Flushbar> _dialogs;
  initialized(AppRouter router, BuildContext context) async {
    _app = initApp(router);
    _dialogs = [];

    routerService = getIt.get<IPageRouterService>();
    routerService.registerRouter(router, this, _app);

    notifyListeners();
  }

  MaterialApp initApp(AppRouter router) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }

  void actionDilog(Widget render, FlushbarPosition position, Color color,
      double border, BorderRadius radius, BuildContext context, String id) {
    var dialog = Flushbar(
      key: Key(id),
      messageText: render,
      flushbarPosition: position,
      backgroundColor: color,
      borderWidth: border,
      borderRadius: radius,
    );

    //This is really ugly, but since it's async and we can't get the widget
    //from the tree because of the dynamic context We have to somehow account
    //for the widget getting dissmissed by the user e.g user accidently
    //clicked on the wrong authenication approval box and slided down the
    //panel without clicking approve
    //TODO refactor this futher in ase you run into a better alternative
    _dialogs
        .add(dialog..show(context).then((value) => ensureDisposed(dialog, id)));
  }

  void dismissActionDialog(String id) {
    var dialog = _dialogs.singleWhere((element) => element.key == Key(id));

    dialog.dismiss();
    _dialogs.remove(dialog);
  }

  ensureDisposed(Flushbar dialog, String id) {
    var isDisposed = false;
    var existingDialog =
        _dialogs.singleWhere((element) => element.key == Key(id), orElse: () {
      isDisposed = true;
      return Flushbar();
    });

    if (!isDisposed) {
      _dialogs.remove(existingDialog);
    }
  }
}
