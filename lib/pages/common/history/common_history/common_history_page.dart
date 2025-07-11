import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shmr_finance/core/date_formatter/date_formatter.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/list_bottom_button_wrapper/list_bottom_button_wrapper.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/header_list_item.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/model/ui_items/transaction_sharing_model.dart';
import 'package:shmr_finance/pages/common/add_or_edit_buy/edit_buy_screen.dart';
import 'package:shmr_finance/pages/common/history/types/history_page_type.dart';
import 'package:shmr_finance/pages/common/history/types/sort_type.dart';
import 'package:shmr_finance/utils/router/app_routes.dart';

import 'package:shmr_finance/utils/strings/s.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import 'logic/common_history_date_cubit.dart';
import 'logic/common_history_cubit.dart';
import 'logic/common_history_view_model.dart';

class CommonHistoryPage extends StatelessWidget {
  final HistoryPageType pageType;
  const CommonHistoryPage({required this.pageType, super.key});

  @override
  Widget build(BuildContext context) {
    return ShmrAppBar(
      title: switch (pageType) {
        HistoryPageType.expences => S.of(context).expences_history,
        HistoryPageType.incomes => S.of(context).incomes_history,
      },
      buttonIcon: Icons
          .assignment_outlined, // чтобы сделать икноку с фигмы, надо испортить кастомный шрифт. Займусь позже
      onTap: () {
        context.push(
            '${GoRouterState.of(context).uri.toString()}/${SubRoutes.commonAnalyze.routeName}');
      },
      child: _Page(
        pageType: pageType,
      ),
    );
  }
}

class _Page extends StatelessWidget {
  final HistoryPageType pageType;
  const _Page({required this.pageType, super.key});

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AppScopeContainer>.withPlaceholder(
        builder: (context, scope) => BlocProvider(
              create: (context) => CommonHistoryDateCubit(),
              child: BlocBuilder<CommonHistoryDateCubit,
                      CommonHistoryDateCubitState>(
                  builder: (context, state) => Column(
                        children: [
                          __DatePickers(),
                          Expanded(
                            child: BlocProvider(
                                create: (context) => CommonHistoryCubit(
                                    pageType: pageType, scopeContainer: scope)
                                  ..getHistory(state.startTime, state.endTime),
                                child: BlocListener<CommonHistoryDateCubit,
                                        CommonHistoryDateCubitState>(
                                    listener: (context, state) {
                                      context
                                          .read<CommonHistoryCubit>()
                                          .getHistory(
                                              state.startTime, state.endTime);
                                    },
                                    child: BlocBuilder<CommonHistoryCubit,
                                            CommonHistoryState>(
                                        builder: (context, state) =>
                                            switch (state) {
                                              Loading() => __Loading(),
                                              Content() => __Content(
                                                  totalAmountItem:
                                                      state.content.total,
                                                  items: state.content.items,
                                                  currentType: state.sortType,
                                                  pageType: pageType,
                                                ),
                                              CustomError() =>
                                                __Error(e: state.error),
                                              _ => __Loading()
                                            }))),
                          )
                        ],
                      )),
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

class __Content extends StatelessWidget {
  final HistoryPageType pageType;
  final TotalAmountItem totalAmountItem;
  final List<ExpenceItem> items;
  final SortType currentType;
  const __Content(
      {required this.totalAmountItem,
      required this.items,
      required this.currentType,
      required this.pageType,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        __SortTypes(
          selectedType: currentType,
          pageType: pageType,
        ),
        Expanded(
            child: ShmrListBottomButtonWrapper(
          childList: (controller) => ListView.builder(
              controller: controller,
              itemCount: items.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  final totalItem = totalAmountItem;
                  return ShmrHeaderListItem(
                      leftTitle: S.of(context).total,
                      rigthTitle:
                          '${totalItem.totalAmount} ${totalItem.currencySign}');
                } else {
                  final expenceItem = items[index - 1];

                  return ShmrUniversalListItem(
                    leadingEmoji: expenceItem.emoji,
                    leftTitle: expenceItem.categoryItem?.name ?? 'undef',
                    leftSubtitle: expenceItem.subtitle,
                    rigthTitle: '${expenceItem.summ} ${expenceItem.moneySign}',
                    rightSubtitle: DateFormatter.toDateWithoutSeconds(
                        expenceItem.datetime),
                    isChevroned: true,
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      useSafeArea: true,
                      enableDrag: false,
                      builder: (modalContext) => EditBuyScreen(
                          title: switch (
                              BlocProvider.of<CommonHistoryCubit>(context)
                                  .pageType) {
                            HistoryPageType.expences =>
                              S.of(context).expences_history,
                            HistoryPageType.incomes =>
                              S.of(context).incomes_history,
                          },
                          transactionSharing: TransactionSharingModel(
                            id: expenceItem.id,
                            scoreItem: expenceItem.accountItem,
                            categoryItem: expenceItem.categoryItem,
                            amount: expenceItem.summ,
                            date: expenceItem.datetime,
                            comment: expenceItem.subtitle,
                          ),
                          pageType: BlocProvider.of<CommonHistoryCubit>(context)
                              .pageType,
                          onExitTap: modalContext.pop,
                          onApproveTap: (item) async {
                            modalContext.pop();
                            if (context.mounted) {
                              await BlocProvider.of<CommonHistoryCubit>(context)
                                  .updateBuy(
                                      item.id!,
                                      item.scoreItem!.id,
                                      item.categoryItem!.id,
                                      item.amount!,
                                      item.date,
                                      item.comment);
                              await BlocProvider.of<CommonHistoryCubit>(context)
                                  .getHistory(
                                      BlocProvider.of<CommonHistoryDateCubit>(
                                              context)
                                          .state
                                          .startTime,
                                      BlocProvider.of<CommonHistoryDateCubit>(
                                              context)
                                          .state
                                          .endTime);
                            }
                          },
                          onDeleteTap: () async {
                            modalContext.pop();
                            if (context.mounted) {
                              await BlocProvider.of<CommonHistoryCubit>(context)
                                  .deleteBuy(expenceItem.id);
                              await BlocProvider.of<CommonHistoryCubit>(context)
                                  .getHistory(
                                      BlocProvider.of<CommonHistoryDateCubit>(
                                              context)
                                          .state
                                          .startTime,
                                      BlocProvider.of<CommonHistoryDateCubit>(
                                              context)
                                          .state
                                          .endTime);
                            }
                          }),
                    ),
                  );
                }
              }),
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              useSafeArea: true,
              enableDrag: false,
              builder: (modalContext) => EditBuyScreen(
                title: switch (
                    BlocProvider.of<CommonHistoryCubit>(context).pageType) {
                  HistoryPageType.expences => S.of(context).expences_history,
                  HistoryPageType.incomes => S.of(context).incomes_history,
                },
                pageType: BlocProvider.of<CommonHistoryCubit>(context).pageType,
                onExitTap: modalContext.pop,
                onApproveTap: (item) async {
                  modalContext.pop();
                  if (context.mounted) {
                    await BlocProvider.of<CommonHistoryCubit>(context)
                        .createBuy(item.scoreItem!.id, item.categoryItem!.id,
                            item.amount!, item.date, item.comment);
                    await BlocProvider.of<CommonHistoryCubit>(context)
                        .getHistory(
                            BlocProvider.of<CommonHistoryDateCubit>(context)
                                .state
                                .startTime,
                            BlocProvider.of<CommonHistoryDateCubit>(context)
                                .state
                                .endTime);
                  }
                },
              ),
            );
          },
        ))
      ],
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

/// Календари унифицирую под дизайн в след. итерации
class __DatePickers extends StatelessWidget {
  const __DatePickers({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CommonHistoryDateCubit>(context);
    return Column(
      children: [
        ShmrHeaderListItem(
          leftTitle: S.of(context).start,
          rigthTitle: DateFormatter.toDayAndMonth(cubit.state.startTime),
          onTap: () async {
            final newStartTime = await showDatePicker(
                context: context,
                initialEntryMode: DatePickerEntryMode.calendarOnly,
                currentDate: cubit.state.startTime,
                firstDate: DateTime.now().subtract(Duration(days: 365)),
                lastDate: DateTime.now().add(Duration(days: 365)),
                helpText: null);
            cubit.updateStartTime(newStartTime);
          },
        ),
        ShmrHeaderListItem(
          leftTitle: S.of(context).end,
          rigthTitle: DateFormatter.toDayAndMonth(cubit.state.endTime),
          onTap: () async {
            final newStartTime = await showDatePicker(
                context: context,
                currentDate: cubit.state.endTime,
                firstDate: DateTime.now().subtract(Duration(days: 365)),
                lastDate: DateTime.now().add(Duration(days: 365)));
            cubit.updateEndTime(newStartTime);
          },
        ),
      ],
    );
  }
}

class __SortTypes extends StatelessWidget {
  final HistoryPageType pageType;
  final SortType selectedType;
  const __SortTypes(
      {required this.selectedType, required this.pageType, super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CommonHistoryCubit>(context);
    final sortTypes = pageType.sortTypes;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(sortTypes.length, (index) {
        return ElevatedButton(
          onPressed: () {
            cubit.sort(sortTypes[index]);
          },
          child: Text(sortTypes[index].label,
              style: context.textTheme.bodySmall!.copyWith(
                  color: sortTypes[index] == selectedType
                      ? context.theme.red
                      : context.theme.textColor)),
        );
      }),
    );
  }
}
