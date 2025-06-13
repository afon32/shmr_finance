enum MainRoutes {
  initial,
  login,
  register,
  home,
  income,
  expences,
  score,
  costItems,
  settings
}

extension MainRoutesX on MainRoutes {
  String get routeName {
    switch (this) {
      case MainRoutes.initial:
        return '/';
      case MainRoutes.login:
        return '/login';
      case MainRoutes.register:
        return '/register';
      case MainRoutes.home:
        return '/home';
      case MainRoutes.income:
        return '/income';
      case MainRoutes.expences:
        return '/expences';
      case MainRoutes.score:
        return '/score';
      case MainRoutes.costItems:
        return '/costItems';
      case MainRoutes.settings:
        return '/settings';
    }
  }
}

enum SubRoutes {
  incomeHome,
  expencesHome,
  scoreHome,
  costItemsHome,
  settingsHome,
}

extension SubRoutesX on SubRoutes {
  String get routeName {
    switch (this) {
      case SubRoutes.incomeHome:
        return 'income_home';
        //TODO: add next pages for incomeHome
      case SubRoutes.expencesHome:
        return 'expence_home';
        //TODO: add next pages expencesHome
      case SubRoutes.scoreHome:
        return 'score_home';
        //TODO: add next pages scoreHome
      case SubRoutes.costItemsHome:
        return 'cost_items_home';
        //TODO: add next pages costItemsHome
      case SubRoutes.settingsHome:
        return 'settings_home';
        //TODO: add next pages settingsHome
    }
  }
}
