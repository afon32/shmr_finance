import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/list_bottom_button_wrapper/list_bottom_button_wrapper.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/header_list_item.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/model/ui_items/transaction_sharing_model.dart';
import 'package:shmr_finance/pages/common/add_or_edit_buy/edit_buy_screen.dart';
import 'package:shmr_finance/pages/common/history/types/history_page_type.dart';
import 'package:shmr_finance/utils/router/app_routes.dart';

import 'package:shmr_finance/utils/strings/s.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import 'logic/history_today_cubit.dart';
import 'logic/history_today_view_model.dart';

class TodayHistoryPage extends StatelessWidget {
  final HistoryPageType pageType;
  const TodayHistoryPage({required this.pageType, super.key});

  @override
  Widget build(BuildContext context) {
    return ShmrAppBar(
      title: switch (pageType) {
        HistoryPageType.expences => S.of(context).expences_today,
        HistoryPageType.incomes => S.of(context).incomes_today,
      },
      buttonIcon: Icons.history,
      onTap: () {
        context.push('./${SubRoutes.commonHistory.routeName}');
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
              create: (context) =>
                  HistoryTodayCubit(pageType: pageType, scopeContainer: scope)
                    ..getHistory(),
              child: BlocBuilder<HistoryTodayCubit, HistoryTodayState>(
                  builder: (context, state) => switch (state) {
                        Loading() => __Loading(),
                        Content() => __Content(
                            totalAmountItem: state.content.total,
                            items: state.content.items,
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

class __Content extends StatelessWidget {
  final TotalAmountItem totalAmountItem;
  final List<ExpenceItem> items;
  const __Content(
      {required this.totalAmountItem, required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return ShmrListBottomButtonWrapper(
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
                leftTitle: expenceItem.categoryItem.name,
                leftSubtitle: expenceItem.subtitle,
                rigthTitle: '${expenceItem.summ} ${expenceItem.moneySign}',
                isChevroned: true,
                onTap: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  useSafeArea: true,
                  enableDrag: false,
                  builder: (modalContext) => EditBuyScreen(
                      title: switch (BlocProvider.of<HistoryTodayCubit>(context)
                          .pageType) {
                        HistoryPageType.expences =>
                          S.of(context).expences_today,
                        HistoryPageType.incomes => S.of(context).incomes_today,
                      },
                      transactionSharing: TransactionSharingModel(
                        id: expenceItem.id,
                        scoreItem: expenceItem.accountItem,
                        categoryItem: expenceItem.categoryItem,
                        amount: expenceItem.summ,
                        date: expenceItem.date,
                        comment: expenceItem.subtitle,
                      ),
                      onExitTap: modalContext.pop,
                      onApproveTap: (item) {
                        modalContext.pop();
                        BlocProvider.of<HistoryTodayCubit>(context).updateBuy(
                            item.id!,
                            item.scoreItem!.id,
                            item.categoryItem!.id,
                            item.amount!,
                            item.date,
                            item.comment);
                        BlocProvider.of<HistoryTodayCubit>(context)
                            .getHistory();
                      },
                      onDeleteTap: () {
                        modalContext.pop();
                        BlocProvider.of<HistoryTodayCubit>(context)
                            .deleteBuy(expenceItem.id);
                        BlocProvider.of<HistoryTodayCubit>(context)
                            .getHistory();
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
                BlocProvider.of<HistoryTodayCubit>(context).pageType) {
              HistoryPageType.expences => S.of(context).expences_today,
              HistoryPageType.incomes => S.of(context).incomes_today,
            },
            onExitTap: modalContext.pop,
            onApproveTap: (item) {
              modalContext.pop();
              BlocProvider.of<HistoryTodayCubit>(context).createBuy(
                  item.scoreItem!.id,
                  item.categoryItem!.id,
                  item.amount!,
                  item.date,
                  item.comment);
              BlocProvider.of<HistoryTodayCubit>(context).getHistory();
            },
          ),
        );
      },
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
