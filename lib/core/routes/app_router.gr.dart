// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:student_lecture_app/presentation/pages/calculator_page/calaculator_page.dart'
    as _i1;
import 'package:student_lecture_app/presentation/pages/news_page/news_page.dart'
    as _i2;
import 'package:student_lecture_app/presentation/pages/splash_page.dart' as _i3;
import 'package:student_lecture_app/presentation/pages/to_do_page/to_do_page.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CalculatorRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CalculatorPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NewsPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashPage(),
      );
    },
    ToDoRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ToDoPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CalculatorPage]
class CalculatorRoute extends _i5.PageRouteInfo<void> {
  const CalculatorRoute({List<_i5.PageRouteInfo>? children})
      : super(
          CalculatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalculatorRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NewsPage]
class NewsRoute extends _i5.PageRouteInfo<void> {
  const NewsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ToDoPage]
class ToDoRoute extends _i5.PageRouteInfo<void> {
  const ToDoRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ToDoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ToDoRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
