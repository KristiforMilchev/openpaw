import 'package:core/application/services/page_router_service.dart';
import 'package:get_it/get_it.dart';

import '../infrastructure/ipage_router_service.dart';

//There is also a shortcut (if you don't like it just ignore it):
GetIt getIt = GetIt.I;

void setupDependency() {
  getIt.registerSingleton<IPageRouterService>(PageRouterService());
}

void registerFactory<T>(FactoryFunc<T> func) {
  getIt.registerFactory(() => func);
}

void registerSingleton<T>(FactoryFunc<T> instance) {
  getIt.registerSingleton(instance);
}

void registerLazySingleton<T>(FactoryFunc<T> func) {
  getIt.registerLazySingleton(() => func);
}
