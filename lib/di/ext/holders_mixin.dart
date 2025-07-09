import 'package:shmr_finance/core/connection_listener/connection_listener_cubit.dart';
import 'package:shmr_finance/core/local_holders/currency_state_holder.dart';
import 'package:shmr_finance/core/local_holders/secret_state_holder.dart';
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

  late final dbDep =
      dep(() => ShmrDatabase(langStateHolderDep.get, themeStateHolderDep.get));

  late final secretsStateHolder = dep(() => SecretStateHolder());
  
  late final secretsInitializer =
      asyncDep(() => SecretInitializer(secretsStateHolder.get));

  late final connectionStatusStateHolder = dep(() => ConnectionStatusStateHolder());
}
