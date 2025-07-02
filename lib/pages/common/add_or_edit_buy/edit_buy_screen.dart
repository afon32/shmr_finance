import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/date_formatter/date_formatter.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';
import 'package:shmr_finance/pages/common/add_or_edit_buy/logic/edit_buy_screen_cubit.dart';
import 'package:shmr_finance/utils/strings/s.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class EditBuyScreen extends StatelessWidget {
  
  final VoidCallback onApproveTap;
  final VoidCallback onExitTap;
  final String title;
  const EditBuyScreen({
    super.key,
    required this.title,
    required this.onExitTap,
    required this.onApproveTap,
  });

  @override
  Widget build(BuildContext context) {
    return ShmrAppBar(
      title: title,
      leading: IconButton(
        onPressed: onExitTap,
        icon: Icon(Icons.cancel_outlined),
      ),
      buttonIcon: Icons.check,
      onTap: onApproveTap,
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
        create: (context) => EditBuyScreenCubit(),
        child: BlocBuilder<EditBuyScreenCubit, EditBuyScreenCubitState>(
          builder: (context, state) {
            final cubit = context.read<EditBuyScreenCubit>();
            final strings = S.of(context);
            return Column(
              children: [
                ShmrUniversalListItem(
                  leftTitle: strings.score,
                  rigthTitle: cubit.state.categoryItem?.name ?? '-',
                  isChevroned: true,
                ),
                ShmrUniversalListItem(
                  leftTitle: S.of(context).costItem,
                  rigthTitle: cubit.state.categoryItem?.name ?? '-',
                  isChevroned: true,
                ),
                ShmrUniversalListItem(
                  leftTitle: S.of(context).summ,
                  rigthTitle:
                      '${cubit.state.amount?.toString() ?? '0'} ${scope.currencyStateHolderDep.get.state.sign}',
                  isChevroned: true,
                ),
                ShmrUniversalListItem(
                  leftTitle: S.of(context).date,
                  rigthTitle: DateFormatter.toDayMonthYear(cubit.state.date),
                  isChevroned: true,
                ),
                ShmrUniversalListItem(
                  leftTitle: S.of(context).time,
                  rigthTitle: DateFormatter.toHoursAndMinutes(cubit.state.date),
                  isChevroned: true,
                ),
                ShmrUniversalListItem(
                  leftTitle: cubit.state.comment ?? strings.comment,
                  leftTitleIsSecondaryStyle: true,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Удалить расход'))
              ],
            );
          },
        ),
      ),
    );
  }
}
