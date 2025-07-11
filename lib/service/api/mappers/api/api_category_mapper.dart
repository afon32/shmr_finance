import 'package:shmr_finance/data/local/dto/models/export.dart';
import 'package:shmr_finance/data/network/dto/responses/export.dart';
import 'package:shmr_finance/model/category.dart';

extension ApiCategoryX on ApiCategory {
  Category toDomain() => Category(
        id: id,
        name: name,
        emoji: emoji,
        isIncome: isIncome,
      );

  DBCategory toLocal() => DBCategory(
        id: id,
        name: name,
        emoji: emoji,
        isIncome: isIncome,
      );
}
