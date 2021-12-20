// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:salt_scouter/ui/scouter/scouter_page.dart' as _i2;
import 'package:salt_scouter/ui/xxx/xxx_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    XXXRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.XXXPage());
    },
    ScouterRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.ScouterPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/scouter', fullMatch: true),
        _i3.RouteConfig(XXXRoute.name, path: '/xxx'),
        _i3.RouteConfig(ScouterRoute.name, path: '/scouter')
      ];
}

/// generated route for [_i1.XXXPage]
class XXXRoute extends _i3.PageRouteInfo<void> {
  const XXXRoute() : super(name, path: '/xxx');

  static const String name = 'XXXRoute';
}

/// generated route for [_i2.ScouterPage]
class ScouterRoute extends _i3.PageRouteInfo<void> {
  const ScouterRoute() : super(name, path: '/scouter');

  static const String name = 'ScouterRoute';
}
