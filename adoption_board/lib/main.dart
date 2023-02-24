import 'package:adoption_board/application/router.dart';
import 'package:adoption_board/application/router.gr.dart';
import 'package:core/domain/models/app_router.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'application/app_router_viewmodel.dart';
import 'application/locator.dart';
import 'package:core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  registerDependency();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var appRouter = AppRouter();

  final configured = false;

  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _appRouter = CoreRouter(appRouter.pagesMap, appRouter.routes);
    return ViewModelBuilder<AppRouteViewModel>.reactive(
      builder: (context, model, child) => Container(
        child: model.app,
      ),
      viewModelBuilder: () => AppRouteViewModel(),
      onViewModelReady: (model) => model.initialized(_appRouter, context),
    );
  }
}
