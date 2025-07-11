import 'package:shmr_finance/core/connection_listener/connection_listener_cubit.dart';
import 'package:shmr_finance/core/local_holders/account_id_state_holder.dart';
import 'package:shmr_finance/core/local_holders/cold_boot_holder.dart';
import 'package:shmr_finance/core/local_holders/currency_state_holder.dart';
import 'package:shmr_finance/core/local_holders/local_transaction_id_holder.dart';
import 'package:shmr_finance/core/local_holders/secret_state_holder.dart';
import 'package:shmr_finance/data/local/dao/account_dao.dart';
import 'package:shmr_finance/data/local/dao/category_dao.dart';
import 'package:shmr_finance/data/local/dao/export.dart';
import 'package:shmr_finance/service/db/database.dart';
import 'package:shmr_finance/service/db/databse_initializer.dart';
import 'package:shmr_finance/service/secret/secret_initializer.dart';
import 'package:shmr_finance/utils/strings/strings_provider.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:yx_scope/yx_scope.dart';

mixin HoldersMixin on ScopeContainer {
  late final themeStateHolderDep = dep(() => ThemeProvider());

  late final langStateHolderDep = dep(() => StringsProvider());

  late final currencyStateHolderDep = dep(() => CurrencyStateHolder());

  late final dbInitializer = asyncDep(() => DbInitializer(dbDep.get));

  late final dbDep = dep(() => ShmrDatabase(
        langStateHolderDep.get,
        themeStateHolderDep.get,
        coldBootStateHolder.get,
        localTransactionIdHolder.get,
      ));

  late final localAccountDaoDep = dep(() => AccountDao(dbDep.get.dbClient));

  late final localTransactionDaoDep =
      dep(() => TransactionDao(dbDep.get.dbClient));

  late final localCategoryDaoDep = dep(() => CategoryDao(dbDep.get.dbClient));

  late final secretsStateHolder = dep(() => SecretStateHolder());

  late final secretsInitializer =
      asyncDep(() => SecretInitializer(secretsStateHolder.get));

  late final connectionStatusStateHolder =
      asyncDep(() => ConnectionStatusStateHolder());

  late final accountStateHolder = dep(() => AccountStateHolder());

  late final coldBootStateHolder = dep(() => ColdBootStateHolder());

  late final localTransactionIdHolder = dep(() => LocalTransactionIdHolder());
}
