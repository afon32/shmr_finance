import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shmr_finance/core/shared_widgets/nav_bar/nav_bar.dart';
import 'package:shmr_finance/utils/router/app_routes.dart';
import 'package:shmr_finance/utils/strings/strings_provider.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

class AppNavigator {
  static final router = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: MainRoutes.expences.routeName,
      routes: [
        // рут для сплэша
        // GoRoute(path: MainRoutes.initial.routeName), //TODO: change mee
        // общий рут для всей аппки. Изменяется только заполнение скафолда
        ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) => ShmrNavBar(child: child),
            routes: [
              // расходы
              GoRoute(
                  path: MainRoutes.expences.routeName,
                  builder: (context, state) => Center(
                      child: TextButton(
                          onPressed: () {
                            BlocProvider.of<ThemeProvider>(context)
                                .toggleTheme();
                          },
                          child: Text('expences'))), //TODO: ПОКА ВИСИТ СМЕНА ТЕМЫ change mee
                  routes: []), //TODO: change mee
              // доходы
              GoRoute(
                  path: MainRoutes.income.routeName,
                  builder: (context, state) => Center(
                      child: TextButton(
                          onPressed: () {
                            BlocProvider.of<StringsProvider>(context)
                                .toggleLang();
                          },
                          child: Text('income'))), //TODO: ПОКА ВИСИТ СМЕНА ЯЗЫКА change mee
                  routes: []), //TODO: change mee
              // счёт
              GoRoute(
                  path: MainRoutes.score.routeName,
                  builder: (context, state) => Center(
                        child: Text('score'),
                      ), //TODO: change mee
                  routes: []), //TODO: change mee
              // статьи
              GoRoute(
                  path: MainRoutes.costItems.routeName,
                  builder: (context, state) => Center(
                        child: Text('cost items'),
                      ), //TODO: change mee
                  routes: []), //TODO: change mee
              // настройки
              GoRoute(
                  path: MainRoutes.settings.routeName,
                  builder: (context, state) => Center(
                        child: Text('settings'),
                      ), //TODO: change mee
                  routes: []), //TODO: change mee
            ])
      ]);
}
