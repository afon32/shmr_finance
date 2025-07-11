import 'package:flutter/material.dart';
import 'package:shmr_finance/core/connection_listener/connection_listener_cubit.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/utils/strings/s.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:shmr_finance/utils/themes/text_theme_extension.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class ShmrAppBar extends StatelessWidget {
  final Widget child;
  final Widget? leading;
  final String title;
  final IconData? buttonIcon;
  final VoidCallback? onTap;
  final bool isCommonColor;
  const ShmrAppBar(
      {required this.child,
      required this.title,
      this.leading,
      this.isCommonColor = false,
      this.buttonIcon,
      this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AppScopeContainer>.withPlaceholder(
        builder: (context, scope) => Scaffold(
              appBar: AppBar(
                leading: leading,
                centerTitle: true,
                title: Text(
                  title,
                  style: context.textTheme.appBarTitle,
                ),
                actions: [IconButton(onPressed: onTap, icon: Icon(buttonIcon))],
                backgroundColor: isCommonColor
                    ? context.theme.commonListItemColor
                    : context.theme.appBarColor,
              ),
              body: Column(
                children: [
                  Expanded(child: child),
                  StreamBuilder(
                    stream: scope.connectionStatusStateHolder.get.stream,
                    builder: (context, snapshot) {
                      if (snapshot.hasData &&
                          snapshot.data ==
                              ConnectionStatusState.disconnected()) {
                        return SizedBox(
                            height: 20,
                            child: ColoredBox(
                              color: context.theme.rejectButtonColor,
                              child: Center(
                                child: Text(S.of(context).offline_mode),
                              ),
                            ));
                      } else {
                        if (scope.connectionStatusStateHolder.get.state ==
                            ConnectionStatusState.disconnected()) {
                          return SizedBox(
                              height: 20,
                              child: ColoredBox(
                                color: context.theme.rejectButtonColor,
                                child: Center(
                                  child: Text(S.of(context).offline_mode),
                                ),
                              ));
                        } else {
                          return const SizedBox.shrink();
                        }
                      }
                    },
                  ),
                ],
              ),
            ));
  }
}
