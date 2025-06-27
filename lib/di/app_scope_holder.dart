import 'package:yx_scope/yx_scope.dart';

import 'app_scope.dart';

class AppScopeHolder extends ScopeHolder<AppScopeContainer> {
  @override
  AppScopeContainer createContainer() => AppScopeContainer();
}
