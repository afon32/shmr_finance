import 'package:shmr_finance/utils/strings/strings_provider.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:yx_scope/yx_scope.dart';

mixin CustomizeMixin on ScopeContainer{
  late final themeStateHolderDep = dep(() => ThemeProvider());

  late final langStateHolderDep = dep(() => StringsProvider());
}