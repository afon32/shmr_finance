import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shmr_finance/core/shared_widgets/list_bottom_button_wrapper/keys.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item.dart';
import 'package:shmr_finance/main.dart';
import 'package:shmr_finance/pages/common/add_or_edit_buy/logic/edit_buy_screen_keys.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Add buy test flow', (WidgetTester tester) async {
    // Запускаем приложение и ждём полной отрисовки
    await tester.pumpWidget(const ShmrApp());
    await tester.pumpAndSettle(Duration(seconds: 2));

    // Тапаем по кнопке добавления траты
    final addButtonFinder =
        find.byKey(ShmrListBottomButtonWrapperKeys.addButton.key);
    await tester.tap(addButtonFinder);
    await tester.pumpAndSettle();

    // Тапаем по списку счетов
    final tapOnScoreDropDownFinder =
        find.byKey(EditBuyScreenKeys.scoreDropDownItem.key);
    await tester.tap(tapOnScoreDropDownFinder);
    await tester.pumpAndSettle();

    // Тапаем по единственному счёту
    final tapOnScoreDropDownItemFinder = find.byKey(Key('score_name'));
    await tester.tap(tapOnScoreDropDownItemFinder);
    await tester.pumpAndSettle();

    // Тапаем по списку категорий
    final tapOnCategoryDropDownFinder =
        find.byKey(EditBuyScreenKeys.categoryDropDownItem.key);
    await tester.tap(tapOnCategoryDropDownFinder);
    await tester.pumpAndSettle();

    // Тапаем по категории 12 (Одежда)
    final tapOnCategoryDropDownItemFinder = find.byKey(Key('category_item_12'));
    await tester.tap(tapOnCategoryDropDownItemFinder);
    await tester.pumpAndSettle();

    // Тапаем по элементу ввода суммы
    final tapOnAmountInputItemFinder =
        find.byKey(EditBuyScreenKeys.amountItem.key);
    await tester.tap(tapOnAmountInputItemFinder);
    await tester.pumpAndSettle();

    // Прокидываем в TextField значение
    final amountInputTextField =
        find.byKey(Key('set_amount_dialogue_input_area'));
    await tester.enterText(amountInputTextField, '100');

    // Тапаем по кнопке подтверждения ввода
    final tapOnAmountInputApplyButtonFinder =
        find.byKey(Key('set_amount_dialogue_apply_button'));
    await tester.tap(tapOnAmountInputApplyButtonFinder);
    await tester.pumpAndSettle();

    // Тапаем по вводу комментария
    final commentInputTextField =
        find.byKey(Key('universal_list_item_with_changing_title_input_key'));
    await tester.enterText(commentInputTextField, 'some comment');
    await tester.pumpAndSettle();

    // Тапаем по кнопке подтверждения изменений
    final acceptBuyButton = find.byKey(Key('accept_buy_button_key'));
    await tester.tap(acceptBuyButton);
    await tester.pumpAndSettle(Duration(seconds: 3));

    // Ищем в списке новую трату
    final widgetFinder = find.byWidgetPredicate((widget) {
      return widget is ShmrUniversalListItem && widget.leftTitle == 'Одежда';
    });

    expect(widgetFinder, findsWidgets); // может быть много
  });
}
