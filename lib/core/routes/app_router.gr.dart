// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:student_lecture_app/presentation/pages/calculator_page/calaculator_page.dart'
    as _i1;
import 'package:student_lecture_app/presentation/pages/news_page/news_page.dart'
    as _i2;
import 'package:student_lecture_app/presentation/pages/news_page/top_stories_category_page.dart'
    as _i6;
import 'package:student_lecture_app/presentation/pages/news_page/top_stories_choose_category_page.dart'
    as _i7;
import 'package:student_lecture_app/presentation/pages/splash_page.dart' as _i3;
import 'package:student_lecture_app/presentation/pages/time_page/time_page.dart'
    as _i4;
import 'package:student_lecture_app/presentation/pages/to_do_page/to_do_page.dart'
    as _i5;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    CalculatorRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CalculatorPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NewsPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashPage(),
      );
    },
    TimeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.TimePage(),
      );
    },
    ToDoRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ToDoPage(),
      );
    },
    TopStoriesCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<TopStoriesCategoryRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.TopStoriesCategoryPage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    TopStoriesChooseCategoryRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.TopStoriesChooseCategoryPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CalculatorPage]
class CalculatorRoute extends _i8.PageRouteInfo<void> {
  const CalculatorRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CalculatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalculatorRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NewsPage]
class NewsRoute extends _i8.PageRouteInfo<void> {
  const NewsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.TimePage]
class TimeRoute extends _i8.PageRouteInfo<void> {
  const TimeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          TimeRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ToDoPage]
class ToDoRoute extends _i8.PageRouteInfo<void> {
  const ToDoRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ToDoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ToDoRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.TopStoriesCategoryPage]
class TopStoriesCategoryRoute
    extends _i8.PageRouteInfo<TopStoriesCategoryRouteArgs> {
  TopStoriesCategoryRoute({
    _i9.Key? key,
    required String title,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          TopStoriesCategoryRoute.name,
          args: TopStoriesCategoryRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'TopStoriesCategoryRoute';

  static const _i8.PageInfo<TopStoriesCategoryRouteArgs> page =
      _i8.PageInfo<TopStoriesCategoryRouteArgs>(name);
}

class TopStoriesCategoryRouteArgs {
  const TopStoriesCategoryRouteArgs({
    this.key,
    required this.title,
  });

  final _i9.Key? key;

  final String title;

  @override
  String toString() {
    return 'TopStoriesCategoryRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i7.TopStoriesChooseCategoryPage]
class TopStoriesChooseCategoryRoute extends _i8.PageRouteInfo<void> {
  const TopStoriesChooseCategoryRoute({List<_i8.PageRouteInfo>? children})
      : super(
          TopStoriesChooseCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'TopStoriesChooseCategoryRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
