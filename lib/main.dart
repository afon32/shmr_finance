import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/connection_listener/connection_listener_cubit.dart';
import 'package:shmr_finance/data/local/sembast_db/sembast_repository.dart';
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
    return RepositoryProvider(
      create: (context) => SembastRepository(), // maybe
      child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => ThemeProvider()),
            BlocProvider(create: (_) => StringsProvider()),
            BlocProvider(
                create: (context) =>
                    ConnectionListenerCubit(RepositoryProvider.of(context)))
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
            );
          })),
    );
  }
}
