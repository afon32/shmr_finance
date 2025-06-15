import 'package:shmr_finance/di/app_scope.dart';

class AppScopeLocator {
  AppScopeLocator._();

  static AppScopeContainer? _cachedScope;

  static AppScopeContainer get appScope {
    return _cachedScope ??= AppScopeContainer();
  }
}
