enum ApiRoutes {
  getAllAccounts,
  getAccountById,
  updateAccount,
  createNewAccount,
  getAccountHistory,
  getAllCategories,
  getCategoriesByType,
  getTransactionById,
  getTransactionByPeriod,
  createTransaction,
  deleteTransaction,
  updateTransaction;

  String get routeName => switch (this) {
        ApiRoutes.getAllAccounts => '/accounts',
        ApiRoutes.getAccountById => '/accounts',
        ApiRoutes.updateAccount => '/accounts',
        ApiRoutes.createNewAccount => '/accounts',
        ApiRoutes.getAccountHistory => '/accounts',
        ApiRoutes.getAllCategories => '/categories',
        ApiRoutes.getCategoriesByType => '/categories/type',
        ApiRoutes.getTransactionById => '/transactions',
        ApiRoutes.getTransactionByPeriod => '/transactions',
        ApiRoutes.createTransaction => '/transactions',
        ApiRoutes.updateTransaction => '/transactions',
        ApiRoutes.deleteTransaction => '/transactions',
      };

  String routeNameWithPathParameters(List<dynamic> parameters) {
    switch (this) {
      case ApiRoutes.getAllAccounts:
        return ApiRoutes.getAllAccounts.routeName;
      case ApiRoutes.getAccountById:
        return '${ApiRoutes.getAccountById.routeName}/${parameters.first}';
      case ApiRoutes.updateAccount:
        return '${ApiRoutes.getAccountById.routeName}/${parameters.first}';
      case ApiRoutes.createNewAccount:
        return ApiRoutes.createNewAccount.routeName;
      case ApiRoutes.getAccountHistory:
        return '${ApiRoutes.getAccountHistory.routeName}/${parameters.first}/history';
      case ApiRoutes.getAllCategories:
        return ApiRoutes.getAllCategories.routeName;
      case ApiRoutes.getCategoriesByType:
        return '${ApiRoutes.getCategoriesByType.routeName}/${parameters.first}';
      case ApiRoutes.getTransactionById:
        return '${ApiRoutes.getTransactionById.routeName}/${parameters.first}';
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
