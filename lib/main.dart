import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'application/app_router_viewmodel.dart';
import 'application/locator.dart';
import 'application/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  registerDependency();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  final configured = false;

  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppRouteViewModel>.reactive(
        builder: (context, model, child) => Container(
              child: model.app,
            ),
        viewModelBuilder: () => AppRouteViewModel(),
        onViewModelReady: (model) => model.initialized(_appRouter, context));
  }
}
