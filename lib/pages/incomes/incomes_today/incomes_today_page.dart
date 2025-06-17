import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/header_list_item.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item.dart';
import 'package:shmr_finance/pages/incomes/incomes_today/logic/incomes_today_cubit.dart';

import 'package:shmr_finance/utils/strings/s.dart';

import 'logic/incomes_today_view_model.dart';

class TodayIncomesPage extends StatelessWidget {
  const TodayIncomesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ShmrAppBar(
      title: S.of(context).incomes_today,
      buttonIcon: Icons.history,
      onTap: () {},
      child: _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IncomesTodayCubit()..getHistory(),
      child: BlocBuilder<IncomesTodayCubit, IncomesTodayState>(
          builder: (context, state) => switch (state) {
                Loading() => __Loading(),
                Content() => __Content(
                    totalAmountItem: state.content.total,
                    items: state.content.items,
                  ),
                CustomError() => __Error(e: state.error),
                _ => __Loading()
              }),
    );
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
    return ListView.builder(
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
              leftTitle: expenceItem.categoryName,
              leftSubtitle: expenceItem.subtitle,
              rigthTitle: '${expenceItem.summ} ${expenceItem.moneySign}',
              isChevroned: true,
              onTap: () {},
            );
          }
        });
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
