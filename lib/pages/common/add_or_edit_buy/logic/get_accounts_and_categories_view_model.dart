import 'package:shmr_finance/model/ui_items/account_item.dart';
import 'package:shmr_finance/model/ui_items/category_item.dart';

class GetAccountsAndCategoriesViewModel {
  final List<AccountItem> accountItems;
  final List<CategoryItem> categoryItems;

  GetAccountsAndCategoriesViewModel(
      {required this.accountItems, required this.categoryItems});
}
