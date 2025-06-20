import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/weather/presentation/screens/weather_page_json.dart';
import '../../features/weather/presentation/screens/weather_page_xml.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => fadeTransition(WeatherPageJson(), state),
    ),
    GoRoute(
      path: '/json',
      pageBuilder: (context, state) => fadeTransition(WeatherPageJson(), state),
    ),
    GoRoute(
      path: '/xml',
      pageBuilder: (context, state) => fadeTransition(WeatherPageXml(), state),
    ),
  ],
);

CustomTransitionPage fadeTransition(Widget child, GoRouterState state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
    transitionDuration: const Duration(milliseconds: 400),
  );
}
