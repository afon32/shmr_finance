enum ApiRoutes {
  getAllAccounts,
  createNewAccount,
  getAllCategories,
  getTransactionByPeriod,
  createTransaction,
  deleteTransaction,
  updateTransaction;

  String get routeName => switch (this) {
        ApiRoutes.getAllAccounts => '/accounts',
        ApiRoutes.createNewAccount => '/accounts',
        ApiRoutes.getAllCategories => '/categories',
        ApiRoutes.getTransactionByPeriod => '/transactions',
        ApiRoutes.createTransaction => '/transactions',
        ApiRoutes.updateTransaction => '/transactions',
        ApiRoutes.deleteTransaction => '/transactions',
      };

  String routeNameWithPathParameters(List<dynamic> parameters) {
    switch (this) {
      case ApiRoutes.getAllAccounts:
        return ApiRoutes.getAllAccounts.routeName;
      case ApiRoutes.createNewAccount:
        return ApiRoutes.createNewAccount.routeName;
      case ApiRoutes.getAllCategories:
        return ApiRoutes.getAllCategories.routeName;
      case ApiRoutes.getTransactionByPeriod:
        return '${ApiRoutes.getTransactionByPeriod.routeName}/account/${parameters.first}/period';
      case ApiRoutes.createTransaction:
        return ApiRoutes.createTransaction.routeName;
      case ApiRoutes.updateTransaction:
        return '${ApiRoutes.updateTransaction.routeName}/${parameters.first}';
      case ApiRoutes.deleteTransaction:
        return '${ApiRoutes.deleteTransaction.routeName}/${parameters.first}';
    }
  }
}
