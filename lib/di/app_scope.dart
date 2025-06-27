import 'package:shmr_finance/data/local/sembast_db/sembast_repository.dart';
import 'package:shmr_finance/data/network/network_repository_impl.dart';
import 'package:shmr_finance/features/account/data/account_repository_impl.dart';
import 'package:shmr_finance/features/account/domain/use_cases/get_account_by_id_use_case.dart';
import 'package:shmr_finance/features/account/domain/use_cases/get_all_accounts_use_case.dart';
import 'package:shmr_finance/features/account/domain/use_cases/update_account_use_case.dart';
import 'package:shmr_finance/features/categories/data/categories_repository_impl.dart';
import 'package:shmr_finance/features/categories/domain/use_cases/get_all_categories_use_case.dart';
import 'package:shmr_finance/features/categories/domain/use_cases/get_categories_from_type_use_case.dart';
import 'package:shmr_finance/features/transactions/data/transactions_repository_impl.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/get_incomes_transactions_history_by_period_use_case.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/get_outcomes_transactions_history_by_period_use_case.dart';
import 'package:shmr_finance/service/api/api_util.dart';
import 'package:yx_scope/yx_scope.dart';

import 'ext/holders_mixin.dart';

class AppScopeContainer extends ScopeContainer with HoldersMixin {
  late final networkDatasourceRepositoryDep = dep(() => NetworkServiceImpl());

  late final localDataSourceRepositoryDep = dep(() => SembastRepository());

  late final apiUtilDep = dep(() => ApiUtil(
      networkService: networkDatasourceRepositoryDep.get,
      localService: localDataSourceRepositoryDep.get));

  // Account

  late final accountRepositoryDep =
      dep(() => AccountRepositoryImpl(apiUtil: apiUtilDep.get));

  late final getAllAccountsUseCaseDep =
      dep(() => GetAllAccountsUseCase(repository: accountRepositoryDep.get));

  late final getAccountByIdUseCaseDep =
      dep(() => GetAccountByIdUseCase(repository: accountRepositoryDep.get));
  
  late final updateAccountByIdUseCaseDep =
      dep(() => UpdateAccountUseCase(repository: accountRepositoryDep.get));

  // Transactions

  late final transactionsRepositoryDep =
      dep(() => TransactionsRepositoryImpl(apiUtil: apiUtilDep.get));

  late final getIncomesTransactionsByPeriodUseCaseDep = dep(() =>
      GetIncomesTransactionsHistoryByPeriodUseCase(
          repository: transactionsRepositoryDep.get));

  late final getOutcomesTransactionsByPeriodUseCaseDep = dep(() =>
      GetOutcomesTransactionsHistoryByPeriodUseCase(
          repository: transactionsRepositoryDep.get));

  // Categories

  late final categoriesRepositoryDep = dep(() => CategoriesRepositoryImpl(apiUtil: apiUtilDep.get));

  late final getAllCategoriesUseCaseDep = dep(() => GetAllCategoriesUseCase(repository: categoriesRepositoryDep.get));
  
  late final getCategoriesFromTypeUseCaseDep = dep(() => GetCategoriesFromTypeUseCase(repository: categoriesRepositoryDep.get));


  @override
  List<Set<AsyncDep>> get initializeQueue => [
        {dbInitializer}
      ];
}
