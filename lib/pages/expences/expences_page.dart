import 'package:flutter/material.dart';
import 'package:shmr_finance/pages/history/common_history/common_history_page.dart';
import 'package:shmr_finance/pages/history/today_history/today_history_page.dart';
import 'package:shmr_finance/pages/history/types/history_page_type.dart';

import 'expences_today/expences_today_page.dart';

class ExpencesPage extends StatelessWidget {
  const ExpencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonHistoryPage(
      pageType: HistoryPageType.expences,
    );
  }
}
