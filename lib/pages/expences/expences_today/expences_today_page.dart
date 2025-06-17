import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/list_bottom_button_wrapper/list_bottom_button_wrapper.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/header_list_item.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item.dart';
import 'package:shmr_finance/pages/expences/expences_today/logic/expences_today_cubit.dart';
import 'package:shmr_finance/pages/expences/expences_today/logic/expences_today_view_model.dart';
import 'package:shmr_finance/utils/strings/s.dart';

class TodayExpencesPage extends StatelessWidget {
  const TodayExpencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ShmrAppBar(
      title: S.of(context).expences_today,
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
      create: (context) => ExpencesTodayCubit()..getHistory(),
      child: BlocBuilder<ExpencesTodayCubit, ExpencesTodayState>(
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
                leftTitle: expenceItem.categoryName,
                leftSubtitle: expenceItem.subtitle,
                rigthTitle: '${expenceItem.summ} ${expenceItem.moneySign}',
                isChevroned: true,
                onTap: () {},
              );
            }
          }),
      onTap: () {
        print('Expence add!');
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
