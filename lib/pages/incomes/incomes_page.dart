import 'package:flutter/material.dart';
import 'package:shmr_finance/pages/history/common_history/common_history_page.dart';
import 'package:shmr_finance/pages/history/today_history/today_history_page.dart';
import 'package:shmr_finance/pages/history/types/history_page_type.dart';
import 'package:shmr_finance/pages/incomes/incomes_history/incomes_history_page.dart';
import 'package:shmr_finance/pages/incomes/incomes_today/incomes_today_page.dart';

class IncomesPage extends StatelessWidget {
  const IncomesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonHistoryPage(
      pageType: HistoryPageType.incomes,
    );
  }
}
