import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shmr_finance/utils/router/app_routes.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

class AppNavigator {
  final router = GoRouter(navigatorKey: _rootNavigatorKey, routes: [
    // рут для сплэша
    GoRoute(path: MainRoutes.initial.routeName),
    // общий рут для всей аппки. Изменяется только заполнение скафолда
    ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => Placeholder(), //TODO: change mee
        routes: [
          // расходы
          GoRoute(
              path: MainRoutes.expences.routeName,
              builder: (context, state) => Placeholder(), //TODO: change mee
              routes: []), //TODO: change mee
          // доходы
          GoRoute(
              path: MainRoutes.income.routeName,
              builder: (context, state) => Placeholder(), //TODO: change mee
              routes: []), //TODO: change mee
          // счёт
          GoRoute(
              path: MainRoutes.score.routeName,
              builder: (context, state) => Placeholder(), //TODO: change mee
              routes: []), //TODO: change mee
          // статьи
          GoRoute(
              path: MainRoutes.costItems.routeName,
              builder: (context, state) => Placeholder(), //TODO: change mee
              routes: []), //TODO: change mee
          // настройки
          GoRoute(
              path: MainRoutes.settings.routeName,
              builder: (context, state) => Placeholder(), //TODO: change mee
              routes: []), //TODO: change mee
        ])
  ]);
}
