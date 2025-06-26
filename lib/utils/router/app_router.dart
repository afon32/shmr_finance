import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shmr_finance/core/shared_widgets/nav_bar/nav_bar.dart';
import 'package:shmr_finance/pages/common/history/common_history/common_history_page.dart';
import 'package:shmr_finance/pages/common/history/types/history_page_type.dart';
import 'package:shmr_finance/pages/expences/expences_page.dart';
import 'package:shmr_finance/pages/incomes/incomes_page.dart';
import 'package:shmr_finance/pages/score/score_page.dart';
import 'package:shmr_finance/utils/router/app_routes.dart';
import 'package:shmr_finance/utils/strings/strings_provider.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root_key');
final GlobalKey<StatefulNavigationShellState> _shellNavigatorKey =
    GlobalKey<StatefulNavigationShellState>(debugLabel: 'shell_navigator_key');

final GlobalKey<NavigatorState> _expencesBranchKey =
    GlobalKey<NavigatorState>(debugLabel: 'expences_branch_key');
final GlobalKey<NavigatorState> _incomesBranchKey =
    GlobalKey<NavigatorState>(debugLabel: 'incomes_branch_key');
final GlobalKey<NavigatorState> _scoreBranchKey =
    GlobalKey<NavigatorState>(debugLabel: 'score_branch_key');
final GlobalKey<NavigatorState> _categoriesBranchKey =
    GlobalKey<NavigatorState>(debugLabel: 'categories_branch_key');
final GlobalKey<NavigatorState> _settingsBranchKey =
    GlobalKey<NavigatorState>(debugLabel: 'settings_branch_key');

class AppNavigator {
  static final routerrr = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: MainRoutes.expences.routeName,
      routes: [
        // общий рут для всей аппки. Изменяется только заполнение скафолда
        StatefulShellRoute.indexedStack(
            key: _shellNavigatorKey,
            builder: (context, state, navigationShell) => ShmrNavBar(
                  currentIndex: navigationShell.currentIndex,
                  onSelect: navigationShell.goBranch,
                  child: navigationShell,
                ),
            branches: [
              StatefulShellBranch(navigatorKey: _expencesBranchKey, routes: [
                GoRoute(
                    path: MainRoutes.expences.routeName,
                    builder: (context, state) => ExpencesPage(),
                    routes: [
                      GoRoute(
                        path: SubRoutes.commonHistory.routeName,
                        builder: (context, state) => CommonHistoryPage(
                            pageType: HistoryPageType.expences),
                      )
                    ]),
              ]),
              StatefulShellBranch(navigatorKey: _incomesBranchKey, routes: [
                GoRoute(
                    path: MainRoutes.income.routeName,
                    builder: (context, state) => IncomesPage(),
                    routes: [
                      GoRoute(
                        path: SubRoutes.commonHistory.routeName,
                        builder: (context, state) => CommonHistoryPage(
                            pageType: HistoryPageType.incomes),
                      )
                    ]),
              ]),
              StatefulShellBranch(navigatorKey: _scoreBranchKey, routes: [
                GoRoute(
                  path: MainRoutes.score.routeName,
                  builder: (context, state) => ScorePage(),
                )
                // GoRoute(
                //     path: MainRoutes.score.routeName,
                //     builder: (context, state) => Center(
                //         child: TextButton(
                //             onPressed: () {
                //               BlocProvider.of<ThemeProvider>(context)
                //                   .toggleTheme();
                //             },
                //             child: Text(
                //                 'score'))), //ПОКА ВИСИТ СМЕНА ТЕМЫ change mee
                //     routes: []),
              ]),
              StatefulShellBranch(navigatorKey: _categoriesBranchKey, routes: [
                GoRoute(
                    path: MainRoutes.costItems.routeName,
                    builder: (context, state) => Center(
                        child: TextButton(
                            onPressed: () {
                              BlocProvider.of<StringsProvider>(context)
                                  .toggleLang();
                            },
                            child: Text(
                                'cost items'))), //ПОКА ВИСИТ СМЕНА ЛОКАЛИ change mee
                    routes: []),
              ]),
              StatefulShellBranch(navigatorKey: _settingsBranchKey, routes: [
                GoRoute(
                    path: MainRoutes.settings.routeName,
                    builder: (context, state) =>
                        Center(child: Text('settings')),
                    routes: []),
              ]),
            ])
      ]);
}
