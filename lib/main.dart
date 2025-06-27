import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/di/app_scope_holder.dart';
import 'package:shmr_finance/utils/router/app_router.dart';
import 'package:shmr_finance/utils/strings/strings_provider.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

void main() async {
  runApp(const ShmrApp());
}

class ShmrApp extends StatefulWidget {
  const ShmrApp({super.key});

  @override
  State<ShmrApp> createState() => _ShmrAppState();
}

class _ShmrAppState extends State<ShmrApp> {
  final _appScopeHolder = AppScopeHolder();

  @override
  void initState() {
    super.initState();
    _appScopeHolder.create();
  }

  @override
  void dispose() {
    _appScopeHolder.drop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScopeProvider(
      holder: _appScopeHolder,
      child: _App(),
    );
  }
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AppScopeContainer>.withPlaceholder(
        builder: (context, scope) => MultiBlocProvider(
                providers: [
                  BlocProvider(create: (_) => scope.themeStateHolderDep.get),
                  BlocProvider(create: (_) => scope.langStateHolderDep.get),
                ],
                child: Builder(builder: (context) {
                  final themeMode = context.watch<ThemeProvider>().state;
                  final locale = context.watch<StringsProvider>().state;

                  return MaterialApp.router(
                    theme: AppTheme.lightTheme,
                    darkTheme: AppTheme.darkTheme,
                    themeMode: themeMode,
                    routerConfig: AppNavigator.routerrr,
                    supportedLocales: locale.supportedLocales,
                    locale: locale.locale,
                    localizationsDelegates: locale.localizationDelegates,
                    builder: (context, child) => child!,
                  );
                })));
  }
}
