import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

void main() {
  goldenTest(
    'Shmr universal list item test with light theme',
    fileName: 'universal_list_item_light',
    builder: () {
      return MaterialApp(
        theme: AppTheme.lightTheme,
        home: Material(
          child: GoldenTestGroup(
            columns: 2,
            children: [
              GoldenTestScenario(
                name: 'all_text_spaces',
                child: ShmrUniversalListItem(
                  leftTitle: 'leftTitle',
                  leftSubtitle: 'leftSubtitle',
                  leadingEmoji: '💻',
                  rigthTitle: 'rightTitile',
                  rightSubtitle: 'rightSubtitle',
                  isChevroned: true,
                ),
              ),
              GoldenTestScenario(
                name: 'widget_instead_right_title',
                child: ShmrUniversalListItem(
                  leftTitle: 'leftTitle',
                  leftSubtitle: 'leftSubtitle',
                  leadingEmoji: '💻',
                  insteadRightTitle: Icon(
                    Icons.computer,
                  ),
                ),
              ),
              GoldenTestScenario(
                name: 'without_subtitles',
                child: ShmrUniversalListItem(
                  leftTitle: 'leftTitle',
                  leadingEmoji: '💻',
                  rigthTitle: 'rightTitile',
                  isChevroned: true,
                ),
              ),
              GoldenTestScenario(
                name: 'left_title_with_secondary_style',
                child: ShmrUniversalListItem(
                  leftTitle: 'leftTitle',
                  leftTitleIsSecondaryStyle: true,
                  leadingEmoji: '💻',
                  rigthTitle: 'rightTitile',
                  isChevroned: true,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
  goldenTest(
    'Shmr universal list item test with dark theme',
    fileName: 'universal_list_item_dark',
    builder: () {
      return MaterialApp(
        theme: AppTheme.darkTheme,
        home: Material(
          child: GoldenTestGroup(
            columns: 2,
            children: [
              GoldenTestScenario(
                name: 'all_text_spaces',
                child: ShmrUniversalListItem(
                  leftTitle: 'leftTitle',
                  leftSubtitle: 'leftSubtitle',
                  leadingEmoji: '💻',
                  rigthTitle: 'rightTitile',
                  rightSubtitle: 'rightSubtitle',
                  isChevroned: true,
                ),
              ),
              GoldenTestScenario(
                name: 'widget_instead_right_title',
                child: ShmrUniversalListItem(
                  leftTitle: 'leftTitle',
                  leftSubtitle: 'leftSubtitle',
                  leadingEmoji: '💻',
                  insteadRightTitle: Icon(
                    Icons.computer,
                  ),
                ),
              ),
              GoldenTestScenario(
                name: 'without_subtitles',
                child: ShmrUniversalListItem(
                  leftTitle: 'leftTitle',
                  leadingEmoji: '💻',
                  rigthTitle: 'rightTitile',
                  isChevroned: true,
                ),
              ),
              GoldenTestScenario(
                name: 'left_title_with_secondary_style',
                child: ShmrUniversalListItem(
                  leftTitle: 'leftTitle',
                  leftTitleIsSecondaryStyle: true,
                  leadingEmoji: '💻',
                  rigthTitle: 'rightTitile',
                  isChevroned: true,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
