import 'package:flutter/material.dart';
import 'package:shmr_finance/pages/common/history/today_history/today_history_page.dart';
import 'package:shmr_finance/pages/common/history/types/history_page_type.dart';

class IncomesPage extends StatelessWidget {
  const IncomesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TodayHistoryPage(pageType: HistoryPageType.incomes);
  }
}