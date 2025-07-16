import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/local_holders/app_lifecycle_holder.dart';
import 'package:shmr_finance/core/shared_widgets/common_screens/secure_screen.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/di/app_scope_holder.dart';
import 'package:shmr_finance/utils/router/app_router.dart';
import 'package:shmr_finance/utils/strings/strings_provider.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

void main() {
  runApp(const ShmrApp());
}

class ShmrApp extends StatefulWidget {
  const ShmrApp({super.key});

  @override
  State<ShmrApp> createState() => _ShmrAppState();
}

class _ShmrAppState extends State<ShmrApp> with WidgetsBindingObserver {
  final _appScopeHolder = AppScopeHolder();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _appScopeHolder.create();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _appScopeHolder.drop();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _appScopeHolder.scope?.appLifecycleStateHolder.get.setLifecycleState(state);
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
                  BlocProvider(create: (_) => scope.mainTintColorHolder.get),
                  BlocProvider(
                      create: (_) => scope.haptickPermissionHolder.get),
                  BlocProvider(
                      create: (_) => scope.appLifecycleStateHolder.get),
                ],
                child: Builder(builder: (context) {
                  final themeMode = context.watch<ThemeProvider>().state;
                  final locale = context.watch<StringsProvider>().state;
                  final st =  context.watch<AppLifecycleStateHolder>().state;
                  final isHidden =
                      context.watch<AppLifecycleStateHolder>().state ==
                          AppLifecycleState.inactive;

                  return MaterialApp.router(
                    theme: AppTheme.lightTheme,
                    darkTheme: AppTheme.darkTheme,
                    themeMode: themeMode,
                    routerConfig: AppNavigator.router,
                    supportedLocales: locale.supportedLocales,
                    locale: locale.locale,
                    localizationsDelegates: locale.localizationDelegates,
                    builder: (context, child) => Stack(
                      children: [
                        child!,
                        if (isHidden) ShmrSecureScreen(),
                      ],
                    ),
                  );
                })));
  }
}
