import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/date_formatter/date_formatter.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/buttons/decline_button.dart';
import 'package:shmr_finance/core/shared_widgets/dialogs/show_input_dialogue.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item_with_changing_title.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';
import 'package:shmr_finance/model/ui_items/transaction_sharing_model.dart';
import 'package:shmr_finance/pages/common/add_or_edit_buy/logic/edit_buy_screen_cubit.dart';
import 'package:shmr_finance/pages/common/add_or_edit_buy/logic/get_accounts_and_categories_cubit.dart';
import 'package:shmr_finance/utils/strings/s.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import 'logic/get_accounts_and_categories_view_model.dart';

class EditBuyScreen extends StatelessWidget {
  final Function(TransactionSharingModel) onApproveTap;
  final VoidCallback onExitTap;
  final VoidCallback? onDeleteTap;
  final String title;
  final TransactionSharingModel? transactionSharing;

  const EditBuyScreen({
    super.key,
    required this.title,
    required this.onExitTap,
    required this.onApproveTap,
    this.onDeleteTap,
    this.transactionSharing,
  });

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AppScopeContainer>.withPlaceholder(
        builder: (context, scope) => BlocProvider(
              create: (context) => GetAccountsAndCategoriesCubit(
                  getAllAccountsUseCase: scope.getAllAccountsUseCaseDep.get,
                  getAllCategoriesUseCase: scope.getAllCategoriesUseCaseDep.get)
                ..getData(),
              child: BlocBuilder<GetAccountsAndCategoriesCubit,
                      GetAccountsAndCategoriesState>(
                  builder: (context, state) => switch (state) {
                        Loading() => __Loading(),
                        Content() => BlocProvider(
                            create: (context) => EditBuyScreenCubit(
                              screenState: transactionSharing != null
                                  ? EditBuyScreenCubitState.buildWith(
                                      transactionSharing!.id,
                                      // transactionSharing!.scoreItem,
                                      null,
                                      transactionSharing!.categoryItem,
                                      transactionSharing!.amount,
                                      transactionSharing!.date,
                                      transactionSharing!.comment,
                                    )
                                  : null,
                            ),
                            child: Builder(
                                builder: (context) => ShmrAppBar(
                                      title: title,
                                      leading: IconButton(
                                        onPressed: onExitTap,
                                        icon: Icon(Icons.close),
                                      ),
                                      buttonIcon: Icons.check,
                                      onTap: () {
                                        if (BlocProvider.of<EditBuyScreenCubit>(
                                                context)
                                            .isValid) {
                                          final currentState = BlocProvider.of<
                                                  EditBuyScreenCubit>(context)
                                              .state;
                                          print(currentState);
                                          final item = TransactionSharingModel(
                                              id: currentState.id,
                                              scoreItem: currentState.scoreItem,
                                              categoryItem:
                                                  currentState.categoryItem,
                                              amount: currentState.amount,
                                              date: currentState.date,
                                              comment: currentState.comment);
                                          onApproveTap(item);
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                                  backgroundColor: context
                                                      .theme.rejectButtonColor,
                                                  content: Text(S
                                                      .of(context)
                                                      .edit_all_places),
                                                  duration:
                                                      Duration(seconds: 3)));
                                        }
                                      },
                                      // onApproveTap,
                                      child: _Page(
                                        transactionSharing: transactionSharing,
                                        accountsAndCategories: state.content,
                                        onDeleteTap: onDeleteTap,
                                      ),
                                    )),
                          ),
                        CustomError() => __Error(e: state.error),
                        _ => __Loading()
                      }),
            ));
  }
}

class __Loading extends StatelessWidget {
  const __Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class __Error extends StatelessWidget {
  final Exception e;
  const __Error({required this.e, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Error: $e'),
    );
  }
}

class _Page extends StatelessWidget {
  final TransactionSharingModel? transactionSharing;
  final GetAccountsAndCategoriesViewModel accountsAndCategories;
  final VoidCallback? onDeleteTap;
  const _Page(
      {super.key,
      required this.transactionSharing,
      required this.accountsAndCategories,
      this.onDeleteTap});

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AppScopeContainer>.withPlaceholder(
      builder: (context, scope) =>
          BlocBuilder<EditBuyScreenCubit, EditBuyScreenCubitState>(
        builder: (context, state) {
          final cubit = context.read<EditBuyScreenCubit>();
          final strings = S.of(context);
          return SingleChildScrollView(
            child: Column(
              children: [
                ShmrUniversalListItem(
                  leftTitle: strings.score,
                  rigthTitle: cubit.state.scoreItem?.name ?? '-',
                  insteadRightTitle: DropdownButton(
                      value: state.scoreItem,
                      items: accountsAndCategories.accountItems
                          .map((e) =>
                              DropdownMenuItem(value: e, child: Text(e.name)))
                          .toList(),
                      onChanged: (value) {
                        if (value != null) {
                          cubit.updateScoreItem(value.id, value.name);
                        }
                      }),
                ),
                ShmrUniversalListItem(
                  leftTitle: S.of(context).costItem,
                  rigthTitle: cubit.state.categoryItem?.name ?? '-',
                  insteadRightTitle: DropdownButton(
                    value: state.categoryItem,
                    items: accountsAndCategories.categoryItems
                        .map((e) =>
                            DropdownMenuItem(value: e, child: Text(e.name)))
                        .toList(),
                    onChanged: (value) {
                      if (value != null) {
                        cubit.updateCategoryItem(value.id, value.name);
                      }
                    },
                  ),
                ),
                ShmrUniversalListItem(
                  leftTitle: S.of(context).summ,
                  rigthTitle:
                      '${cubit.state.amount?.toString() ?? '-'} ${scope.currencyStateHolderDep.get.state.sign}',
                  isChevroned: true,
                  onTap: () => shmrShowInputDoubleDialog(
                    context: context,
                    title: strings.summ,
                    initialValue: state.amount?.toString(),
                    onlyNumbers: true,
                    onApply: (newAmount) {
                      final normalizedAmount = newAmount.replaceAll(',', '.');
                      final doubleAmount = double.tryParse(normalizedAmount);
                      cubit.updateAmount(doubleAmount);
                    },
                  ),
                ),
                ShmrUniversalListItem(
                  leftTitle: S.of(context).date,
                  rigthTitle: DateFormatter.toDayMonthYear(cubit.state.date),
                  isChevroned: true,
                  onTap: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: state.date,
                      firstDate: DateTime.now().subtract(Duration(days: 365)),
                      lastDate: DateTime.now(),
                    );
                    cubit.updateDate(selectedDate);
                  },
                ),
                ShmrUniversalListItem(
                  leftTitle: S.of(context).time,
                  rigthTitle: DateFormatter.toHoursAndMinutes(cubit.state.date),
                  isChevroned: true,
                  onTap: () async {
                    final selectedTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay(
                            hour: state.date.hour, minute: state.date.minute));
                    cubit.updateTime(selectedTime?.hour, selectedTime?.minute);
                  },
                ),
                ShmrUniversalListItemWithChanging(
                  leftTitle: state.comment,
                  hintText: strings.comment,
                  onEnter: (comment) {
                    cubit.updateComment(comment);
                  },
                ),
                if (onDeleteTap != null)
                  ShmrDeclineButton(
                      onTap: onDeleteTap!, text: strings.delete_transaction)
              ],
            ),
          );
        },
        //   ),
      ),
    );
  }
}
