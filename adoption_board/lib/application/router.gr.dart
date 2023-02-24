// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../presentation/views/animal_profile/animal_profile.dart' as _i2;
import '../presentation/views/home/home_view.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.Home(),
      );
    },
    AnimalProfile.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AnimalProfile(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          Home.name,
          path: '/',
        ),
        _i3.RouteConfig(
          AnimalProfile.name,
          path: '/animal-profile',
        ),
      ];
}

/// generated route for
/// [_i1.Home]
class Home extends _i3.PageRouteInfo<void> {
  const Home()
      : super(
          Home.name,
          path: '/',
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i2.AnimalProfile]
class AnimalProfile extends _i3.PageRouteInfo<void> {
  const AnimalProfile()
      : super(
          AnimalProfile.name,
          path: '/animal-profile',
        );

  static const String name = 'AnimalProfile';
}
