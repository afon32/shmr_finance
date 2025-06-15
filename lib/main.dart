import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/di/app_scope_locator.dart';
import 'package:shmr_finance/utils/router/app_router.dart';
import 'package:shmr_finance/utils/strings/strings_provider.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

void main() {
  runApp(const ShmrApp());
}

class ShmrApp extends StatelessWidget {
  const ShmrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => ThemeProvider()),
          BlocProvider(create: (_) => StringsProvider()),
        ],
        child: Builder(builder: (context) {
          final themeMode = context.watch<ThemeProvider>().state;
          final locale = context.watch<StringsProvider>().state;

          return MaterialApp.router(
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeMode,
            routerConfig: AppNavigator.router,
            supportedLocales: locale.supportedLocales,
            locale: locale.locale,
            localizationsDelegates: locale.localizationDelegates,
            builder: (context, child) => child!,
          );
        }));
  }
}
