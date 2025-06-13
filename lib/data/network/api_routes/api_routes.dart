enum ApiRoutes {
  getAllAccounts,
  createNewAccount,
}

extension ApiRoutesX on ApiRoutes {
  String get routeName => switch (this) {
        ApiRoutes.getAllAccounts => '/accounts',
        ApiRoutes.createNewAccount => '/accounts',
      };
}
