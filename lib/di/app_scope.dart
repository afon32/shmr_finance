import 'package:shmr_finance/data/local/sembast_db/sembast_repository.dart';
import 'package:shmr_finance/data/network/network_repository_impl.dart';
import 'package:shmr_finance/features/account/data/account_repository_impl.dart';
import 'package:shmr_finance/features/account/domain/use_cases/get_all_accounts_use_case.dart';
import 'package:shmr_finance/features/transactions/data/transactions_repository_impl.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/get_incomes_transactions_history_by_period_use_case.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/get_outcomes_transactions_history_by_period_use_case.dart';
import 'package:shmr_finance/service/api_util.dart';
import 'package:yx_scope/yx_scope.dart';

import 'ext/customize_mixin.dart';

class AppScopeContainer extends ScopeContainer with CustomizeMixin {
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

  // Transactions

  late final transactionsRepositoryDep =
      dep(() => TransactionsRepositoryImpl(apiUtil: apiUtilDep.get));

  late final getIncomesTransactionsByPeriodUseCaseDep = dep(() =>
      GetIncomesTransactionsHistoryByPeriodUseCase(
          repository: transactionsRepositoryDep.get));

  late final getOutcomesTransactionsByPeriodUseCaseDep = dep(() =>
      GetOutcomesTransactionsHistoryByPeriodUseCase(
          repository: transactionsRepositoryDep.get));
}
