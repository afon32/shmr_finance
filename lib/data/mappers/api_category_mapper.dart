import 'package:shmr_finance/data/dto/responses/export.dart';
import 'package:shmr_finance/model/category.dart';

extension ApiCategoryX on ApiCategory {
  Category toDomain() =>
      Category(id: id, name: name, emoji: emoji, isIncome: isIncome);
}
