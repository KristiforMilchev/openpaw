import 'package:auto_route/auto_route.dart';

import 'package:get_it/get_it.dart';

import '../presentation/views/home/home_view.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: Home, initial: true),
])

// extend the generated private router
class $AppRouter {
  var getIt = GetIt.instance;
  late List<AutoRoute> _routes;
  List<AutoRoute> get routes => _routes;
}
