import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_charts_package/pie_chart/animated_shmr_pie_chart.dart';
import 'package:shmr_charts_package/pie_chart/models/section_data.dart';
import 'package:shmr_charts_package/pie_chart/shmr_pie_chart.dart';
import 'package:shmr_finance/core/date_formatter/date_formatter.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/bottom_sheet/show_bottom_sheet.dart';

import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/pages/common/history/types/history_page_type.dart';
import 'package:shmr_finance/utils/const/pie_chart_section_colors.dart';

import 'package:shmr_finance/utils/strings/s.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import 'logic/analyze_date_cubit.dart';
import 'logic/analyze_cubit.dart';
import 'logic/analyze_view_model.dart';

class CommonAnalyzePage extends StatelessWidget {
  final HistoryPageType pageType;
  const CommonAnalyzePage({required this.pageType, super.key});

  @override
  Widget build(BuildContext context) {
    return ShmrAppBar(
      title: switch (pageType) {
        HistoryPageType.expences => S.of(context).expences_analyze,
        HistoryPageType.incomes => S.of(context).incomes_analyze,
      },
      isCommonColor: true,
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
              create: (context) => AnalyzeDateCubit(),
              child: BlocBuilder<AnalyzeDateCubit, AnalyzeDateCubitState>(
                  builder: (context, state) => Column(
                        children: [
                          __DatePickers(),
                          Expanded(
                            child: BlocProvider(
                                create: (context) => AnalyzeCubit(
                                    pageType: pageType, scopeContainer: scope)
                                  ..getHistory(state.startTime, state.endTime),
                                child: BlocListener<AnalyzeDateCubit,
                                        AnalyzeDateCubitState>(
                                    listener: (context, state) {
                                      context.read<AnalyzeCubit>().getHistory(
                                          state.startTime, state.endTime);
                                    },
                                    child:
                                        BlocBuilder<AnalyzeCubit, AnalyzeState>(
                                            builder: (context, state) =>
                                                switch (state) {
                                                  Loading() => __Loading(),
                                                  Content() => __Content(
                                                      totalAmountItem:
                                                          state.content.total,
                                                      items:
                                                          state.content.items,
                                                      previousItems: state
                                                          .previousContent
                                                          ?.items,
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
  final List<ExpenceCategoryItem> items;
  final List<ExpenceCategoryItem>? previousItems;
  const __Content(
      {required this.totalAmountItem,
      required this.items,
      this.previousItems,
      required this.pageType,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShmrUniversalListItem(
            leftTitle: S.of(context).summ,
            rigthTitle:
                '${totalAmountItem.totalAmount} ${totalAmountItem.currencySign}'),

        // график

        SizedBox(
          height: 200,
          child: previousItems == null
              ? ShmrPieChart(
                  sections: items.asMap().entries.map((entry) {
                  final index = entry.key;
                  final e = entry.value;
                  return ShmrPieChartSectionData(
                    value: e.summ.roundToDouble(),
                    percent: e.percentsFromAll,
                    name: e.categoryName,
                    textColor: context.theme.textColor,
                    sectionColor: pieChartSectionColors[
                        index % pieChartSectionColors.length],
                  );
                }).toList())
              : AnimatedShmrPieChart(
                  oldData: previousItems!.asMap().entries.map((entry) {
                    final index = entry.key;
                    final e = entry.value;
                    return ShmrPieChartSectionData(
                      value: e.summ.roundToDouble(),
                      percent: e.percentsFromAll,
                      name: e.categoryName,
                      textColor: context.theme.textColor,
                      sectionColor: pieChartSectionColors[
                          index % pieChartSectionColors.length],
                    );
                  }).toList(),
                  newData: items.asMap().entries.map((entry) {
                    final index = entry.key;
                    final e = entry.value;
                    return ShmrPieChartSectionData(
                      value: e.summ.roundToDouble(),
                      percent: e.percentsFromAll,
                      name: e.categoryName,
                      textColor: context.theme.textColor,
                      sectionColor: pieChartSectionColors[
                          index % pieChartSectionColors.length],
                    );
                  }).toList()),
        ),

        //
        Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final currentItem = items[index];

                  return ShmrUniversalListItem(
                    leadingEmoji: currentItem.emoji,
                    leftTitle: currentItem.categoryName,
                    leftSubtitle: currentItem.lastTransactionSubtitle,
                    rigthTitle: '${currentItem.percentsFromAll}%',
                    rightSubtitle:
                        '${currentItem.summ} ${currentItem.moneySign}',
                    isChevroned: true,
                    onTap: () {
                      showExpenceItemsBottomSheet(
                          context, currentItem.expenceItems);
                    },
                  );
                })),
      ],
    );
  }

  void showExpenceItemsBottomSheet(
      BuildContext context, List<ExpenceItem> expenceItems) {
    final items = List.generate((expenceItems.length), (index) {
      final expenceItem = expenceItems[index];
      return ShmrUniversalListItem(
        leadingEmoji: expenceItem.emoji,
        leftTitle: expenceItem.categoryName ?? 'undef',
        leftSubtitle: expenceItem.subtitle,
        rigthTitle: '${expenceItem.summ} ${expenceItem.moneySign}',
        rightSubtitle: DateFormatter.toDateWithoutSeconds(expenceItem.datetime),
        isChevroned: false,
      );
    });

    shmrShowBottomSheet(context, items);
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
    final cubit = BlocProvider.of<AnalyzeDateCubit>(context);
    return Column(
      children: [
        ShmrUniversalListItem(
          leftTitle:
              '${S.of(context).period}:${S.of(context).start.toLowerCase()}',
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
        ShmrUniversalListItem(
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
