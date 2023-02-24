import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

class CoreRouter extends _i2.RootStackRouter {
  CoreRouter(this._pagesMap, this._routes,
      [_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  Map<String, _i2.PageFactory> _pagesMap;
  List<_i2.RouteConfig> _routes;
  @override
  // TODO: implement pagesMap
  Map<String, _i2.PageFactory> get pagesMap => _pagesMap;

  @override
  // TODO: implement routes
  List<_i2.RouteConfig> get routes => _routes;
}
