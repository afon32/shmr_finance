import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/utils/strings/s.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import 'logic/settings_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ShmrAppBar(
      title: S.of(context).settings,
      child: _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AppScopeContainer>.withPlaceholder(
      builder: (context, scope) => BlocProvider(
        create: (context) => SettingsCubit(
          themeProvider: scope.themeStateHolderDep.get,
          mainColorHolder: scope.mainTintColorHolder.get,
          hapticksIsOn: scope.haptickPermissionHolder.get,
          stringsProvider: scope.langStateHolderDep.get,
        ),
        child: _SettingsList(),
      ),
    );
  }
}

class _SettingsList extends StatelessWidget {
  const _SettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);

    final cubit = BlocProvider.of<SettingsCubit>(context);
    final state = context.watch<SettingsCubit>().state;
    final isSystemTheme = state.isSystemTheme;
    final mainColor = state.mainColor;
    final hapticksIsOn = state.hapticksOn;
    final isEnglish = state.isEnglish;
    return Column(
      children: [
        // Тема
        ShmrUniversalListItem(
          leftTitle: strings.system_theme,
          insteadRightTitle: Switch(
              value: isSystemTheme,
              onChanged: (value) => value == true
                  ? cubit.setSystemTheme()
                  : cubit.setLightTheme()),
        ),
        // Цвет
        ShmrUniversalListItem(
          leftTitle: strings.main_color,
          isChevroned: true,
          onTap: () => showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: SizedBox(
                  height: 250,
                  child: SlidePicker(
                    pickerColor: mainColor,
                    onColorChanged: (color) => cubit.setMainColor(color),
                    enableAlpha: false,
                  ),
                ),
              );
            },
          ),
        ),
        // Хаптики
        ShmrUniversalListItem(
          leftTitle: strings.hapticks,
          insteadRightTitle: Switch(
              value: hapticksIsOn,
              onChanged: (value) => value == true
                  ? cubit.setHapticksPermissionIsOn()
                  : cubit.setHapticksPermissionIsOff()),
        ),
        // Безопасность
        ShmrUniversalListItem(
          leftTitle: strings.secure,
          isChevroned: true,
        ),
        // Язык
        ShmrUniversalListItem(
          leftTitle: strings.language,
          leftSubtitle: isEnglish ? strings.english : strings.russian,
          insteadRightTitle: Switch(
            value: isEnglish,
            onChanged: (_) => cubit.toggleLang(),
          ),
        ),
      ],
    );
  }
}
