import 'package:shmr_finance/service/db/database.dart';
import 'package:shmr_finance/service/db/databse_initializer.dart';
import 'package:shmr_finance/utils/strings/strings_provider.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:yx_scope/yx_scope.dart';

mixin HoldersMixin on ScopeContainer {
  late final themeStateHolderDep = dep(() => ThemeProvider());

  late final langStateHolderDep = dep(() => StringsProvider());

  late final dbInitializer = asyncDep(() => DbInitializer(dbDep.get));

  late final dbDep =
      dep(() => ShmrDatabase(langStateHolderDep.get, themeStateHolderDep.get));
}
