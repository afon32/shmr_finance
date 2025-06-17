import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/date_formatter/date_formatter.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/list_bottom_button_wrapper/list_bottom_button_wrapper.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/header_list_item.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item.dart';

import 'package:shmr_finance/utils/strings/s.dart';

import 'logic/incomes_date_cubit.dart';
import 'logic/incomes_history_cubit.dart';
import 'logic/incomes_history_view_model.dart';
import 'logic/incomes_sort_type.dart';

class IncomesHistoryPage extends StatelessWidget {
  const IncomesHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ShmrAppBar(
      title: S.of(context).incomes_history,
      buttonIcon: Icons.assignment_add,
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
      create: (context) => IncomesDateCubit(),
      child: BlocBuilder<IncomesDateCubit, IncomesDateCubitState>(
          builder: (context, state) => Column(
                children: [
                  __DatePickers(),
                  Expanded(
                    child: BlocProvider(
                        create: (context) => IncomesHistoryCubit()
                          ..getHistory(state.startTime, state.endTime),
                        child: BlocListener<IncomesDateCubit,
                                IncomesDateCubitState>(
                            listener: (context, state) {
                              context
                                  .read<IncomesHistoryCubit>()
                                  .getHistory(state.startTime, state.endTime);
                            },
                            child: BlocBuilder<IncomesHistoryCubit,
                                    IncomesHistoryState>(
                                builder: (context, state) => switch (state) {
                                      Loading() => __Loading(),
                                      Content() => __Content(
                                          totalAmountItem: state.content.total,
                                          items: state.content.items,
                                          currentType: state.sortType,
                                        ),
                                      CustomError() => __Error(e: state.error),
                                      _ => __Loading()
                                    }))),
                  )
                ],
              )),
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
  final IncomesSortType currentType;
  const __Content(
      {required this.totalAmountItem,
      required this.items,
      required this.currentType,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        __SortTypes(
          selectedType: currentType,
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
                    leftTitle: expenceItem.categoryName,
                    leftSubtitle: expenceItem.subtitle,
                    rigthTitle: '${expenceItem.summ} ${expenceItem.moneySign}',
                    rightSubtitle: DateFormatter.toDateWithoutSeconds(
                        expenceItem.datetime),
                    isChevroned: true,
                    onTap: () {},
                  );
                }
              }),
          onTap: () {},
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

class __DatePickers extends StatelessWidget {
  const __DatePickers({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<IncomesDateCubit>(context);
    return Column(
      children: [
        ShmrHeaderListItem(
          leftTitle: S.of(context).start,
          rigthTitle: DateFormatter.toDayAndMonth(cubit.state.startTime),
          onTap: () async {
            final newStartTime = await showDatePicker(
                context: context,
                firstDate: DateTime.now().subtract(Duration(days: 365)),
                lastDate: DateTime.now().add(Duration(days: 365)));
            cubit.updateStartTime(newStartTime);
          },
        ),
        ShmrHeaderListItem(
            leftTitle: S.of(context).end,
            rigthTitle: DateFormatter.toDayAndMonth(cubit.state.endTime)),
      ],
    );
  }
}

class __SortTypes extends StatelessWidget {
  final IncomesSortType selectedType;
  const __SortTypes({required this.selectedType, super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<IncomesHistoryCubit>(context);
    // final currentType = context.watch(cubit.currentSortType);
    // return BlocSelector<IncomesHistoryCubit, IncomesHistoryState,
    //     IncomesSortType>(selector: (state) => state., builder: builder);
    return Row(
      children: List.generate(IncomesSortType.values.length - 1, (index) {
        if (IncomesSortType.values[index] != IncomesSortType.none) {
          return ElevatedButton(
            onPressed: () {
              cubit.sort(IncomesSortType.values[index]);
            },
            child: Text(
              IncomesSortType.values[index].name[1],
              style: TextStyle(
                  color: IncomesSortType.values[index] == selectedType
                      ? Colors.red
                      : Colors.black),
            ),
          );
        } else {
          return SizedBox.shrink();
        }
      }),
    );
  }
}
